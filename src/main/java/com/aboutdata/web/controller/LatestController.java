/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.PhotosService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 最新圖片 lastest
 * @author youyou
 */
@Controller
@RequestMapping("/latest")
public class LatestController {

    Logger logger = LoggerFactory.getLogger(RandomController.class);

    @Resource
    private PhotosService photosService;

    /**
     * 每次加载24张图片
     * @param request
     * @param model
     * @return
     */
    @RequestMapping
    public String list(HttpServletRequest request, Model model) {
        
        Sort sort = new Sort(Sort.Direction.ASC, "createDate");
        Pageable pageable = new PageRequest(1, 24,sort);
        
        Page<PhotosModel> pages = photosService.find(pageable);
        
        model.addAttribute("pages", pages);
        return "/portal/latest";
    }
}
