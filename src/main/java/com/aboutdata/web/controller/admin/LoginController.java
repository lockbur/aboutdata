package com.aboutdata.web.controller.admin;

import com.aboutdata.service.CaptchaService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 描述 时间 2015-7-20 17:49:36
 *
 * @author aboutdata.me
 */
@Controller
@RequestMapping("/admin/login")
public class LoginController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private CaptchaService captchaService;

    @RequestMapping(method = RequestMethod.GET)
    public String displayLogin(Model model) {
        logger.info("displayLogin ");
        return "/admin/login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String login(String username, String password, String captcha, HttpServletRequest request, Model model) {
//        boolean captchaValid = captchaService.isValid(request.getSession().getId(), captcha);
//        if (!captchaValid) {
//            model.addAttribute("errorMessage", "验证码错误");
//            return "/login";
//        }
         logger.info("login ");
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            SecurityUtils.getSubject().login(token);

            return "redirect:/admin/dashboard";
        } catch (AuthenticationException e) {
             logger.info("login {}",e);
            if (e instanceof UnknownAccountException) {
                model.addAttribute("errorMessage", "账号不存在");
            }
            if (e instanceof DisabledAccountException) {
                model.addAttribute("errorMessage", "账户被禁用");
            }
            if (e instanceof IncorrectCredentialsException) {
                model.addAttribute("errorMessage", "密码不正确");
            }
            //model.addAttribute("errorMessage", "用户名或者密码错误");
//            model.addAttribute("errorMessage", e.getMessage());
            return "/admin/login";
        }
    }

}