package com.aboutdata.service.bean;

import com.aboutdata.commons.application.ApplicationBean;
import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.dto.PhotosDTO;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.PhotosColorsService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.StorageService;
import com.aboutdata.service.TagService;
import java.io.File;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 图片壁纸操作
 *
 * @author youyou
 */
@Service("photosServiceImpl")
public class PhotosServiceImpl implements PhotosService {

    Logger logger = LoggerFactory.getLogger(PhotosServiceImpl.class);

    @Resource
    private ApplicationBean appBean;

    @Resource
    private PhotosDao photosDao;

    @Resource
    private TagService tagService;

    @Resource
    private ImageGraphicsService imageGraphicsService;

    @Resource
    private StorageService storageService;

    @Resource
    private PhotosColorsService photosColorsService;

    @Override
    @Transactional
    public Photos get(String id) {
        Photos photo = photosDao.findOne(id);

        return photo;
    }

    @Override
    public Page<PhotosModel> findByStatus(PhotoStatus status, Pageable pageable) {

        Page<Photos> page = photosDao.findByStatus(status, pageable);

        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public Page<PhotosModel> findByStatusList(List<PhotoStatus> statusList, Pageable pageable) {
        Page<Photos> page = photosDao.findByStatusIn(statusList, pageable);

        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public Page<PhotosModel> find(Pageable pageable) {
        Page<Photos> page = photosDao.findAll(pageable);
        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public List<Photos> findPhotosAndTags() {
        List<Photos> all = photosDao.findAll();
        return all;
    }

    @Override
    @Transactional
    public void addTags(String id, String tagString) {
        Set<Tag> tags = tagService.getTagsFromString(tagString);
        Photos photos = photosDao.findOne(id);
        logger.info("top10  tags {}", tags.size());
        photos.getTags().addAll(tags);
        photosDao.save(photos);
    }

    @Override
    public List<Photos> findByAlbumId(String albumId) {
        return photosDao.findByAlbumId(albumId);
    }

    @Override
    public PhotosModel findById(String id) {
        Photos photos = photosDao.findOne(id);
        return PhotosDTO.getPhotosModelDTO(photos);
    }

    @Override
    @Transactional
    public Photos create(Photos photos) {

        return photosDao.save(photos);
    }

    /**
     * @ 批准通过
     * @ 批准通过 定时任务会马上创建索引 需要再批准通过后创建缩略图 并上传到fastdfs
     * @param id
     * @param description
     */
    @Override
    @Transactional
    public void approve(String id, String description) {
        Photos photos = photosDao.findOne(id);
        // photos.setStatus(PhotoStatus.APPROVED);
        if (StringUtils.isEmpty(photos.getSource())) {
            logger.error("photos source not exists {}", photos);
            return;
        }
        //再批准通过 同时截取图片颜色
        photosColorsService.generateColors(photos);

        File source = new File(photos.getSource());
        //1 生成缩略图
        File thumbnailImage = imageGraphicsService.thumbnail(source);

        logger.error("thumbnailImage {}", thumbnailImage);
        //2 上传原图
        String fastdfsSourceId = storageService.upload(source);
        //3 上传缩略图  fastdfsId 也是存储路劲
        String fastdfsThumbnailId = storageService.upload(thumbnailImage);

        photos.setThumbnail(fastdfsThumbnailId);
        photos.setMedium(fastdfsSourceId);
        photos.setLarge(fastdfsSourceId);
        photos.setSource(fastdfsSourceId);
        photos.setStorageHost(appBean.getSystemConfig().getDefaultStorageHost());
        photos.setDescription(description);
    }

    @Override
    @Transactional
    public int makrStatus(String id, PhotoStatus status) {
        return photosDao.makrStatus(id, status);
    }

    @Override
    public List<PhotosModel> random() {

        List<String> ids = photosDao.findAllIds();
        /**
         * *
         * 1 打乱顺序 造成随机效果 也要分页 2 分頁每次不是同一個隨機序列 每次分頁都是已給新的隨機隊列
         *
         */
        Collections.shuffle(ids);
        //取出24条记录
        List<Photos> photos = photosDao.findByIds(ids.subList(0, 24));

        List<PhotosModel> result = PhotosDTO.getPhotosModeslDTO(photos);

        return result;
    }

    /**
     * 查看详情 并且把查看次数+1
     *
     * @param id
     * @return
     */
    @Override
    @Transactional
    public PhotosModel views(String id) {
        Photos photos = photosDao.findOne(id);
        //如果访问一次 就把该访问次数加1
        photos.setOrder(photos.getOrder() + 1);
        return PhotosDTO.getPhotosModelDTO(photos);
    }

    @Override
    public long count() {
        return photosDao.count();
    }

}
