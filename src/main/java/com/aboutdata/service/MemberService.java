package com.aboutdata.service;

import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Member;
import java.math.BigDecimal;
import java.util.List;

/**
 * Service - 会员
 *
 *
 *
 */
public interface MemberService {

    /**
     * 判断用户名是否存在
     *
     * @param username 用户名(忽略大小写)
     * @return 用户名是否存在
     */
    boolean usernameExists(String username);

    /**
     * 判断E-mail是否存在
     *
     * @param email E-mail(忽略大小写)
     * @return E-mail是否存在
     */
    boolean emailExists(String email);

    /**
     * 判断E-mail是否唯一
     *
     * @param previousEmail 修改前E-mail(忽略大小写)
     * @param currentEmail 当前E-mail(忽略大小写)
     * @return E-mail是否唯一
     */
    boolean emailUnique(String previousEmail, String currentEmail);

    /**
     * 根据用户名查找会员
     *
     * @param username 用户名(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    Member findByUsername(String username);

    /**
     * 根据E-mail查找会员
     *
     * @param email E-mail(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    List<Member> findListByEmail(String email);

    /**
     * 判断会员是否登录
     *
     * @return 会员是否登录
     */
    boolean isAuthenticated();

    /**
     * 获取当前登录会员
     *
     * @return 当前登录会员，若不存在则返回null
     */
    Member getCurrent();

    /**
     * 获取当前登录用户名
     *
     * @return 当前登录用户名，若不存在则返回null
     */
    String getCurrentUsername();

}