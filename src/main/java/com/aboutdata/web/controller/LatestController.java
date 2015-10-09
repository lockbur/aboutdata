/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.Photos;
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
 *
 * @author youyou
 */
@Controller
@RequestMapping("/latest")
public class LatestController {

    Logger logger = LoggerFactory.getLogger(RandomController.class);

    @Resource
    private PhotosService photosService;

    @RequestMapping
    public String list(HttpServletRequest request, Model model) {
//        logger.info("page: {}", page);
        
        Sort sort = new Sort(Sort.Direction.ASC, "createDate");
        Pageable pageable = new PageRequest(1, 50,sort);
        
        
        Page<PhotosModel> list = photosService.find(pageable);

        model.addAttribute("list", list);
        return "/portal/latest";
    }
}
