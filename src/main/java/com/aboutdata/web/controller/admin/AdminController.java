package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Role;
import com.aboutdata.model.AdminModel;
import com.aboutdata.model.RoleModel;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author youyou
 */
@Controller
@RequestMapping("/admin/employee")
public class AdminController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource(name = "adminServiceImpl")
    private AdminService adminService;

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String displayAdd(ModelMap model) {
        List<RoleModel> roles = roleService.findAll();
        logger.info("roles {}", roles);
        model.addAttribute("roles", roles);
        return "/admin/employee/add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(String username, String password, String email, String[] roles) {

        Admin admin = new Admin();
        admin.setEmail(email);
        admin.setIsEnabled(Boolean.TRUE);
        admin.setIsLocked(Boolean.FALSE);
        admin.setLockedDate(new Date());
        admin.setLoginFailureCount(0);
        admin.setName("王坤");
        admin.setDepartment("计算机");
        admin.setUsername(username);
        admin.setPassword(password);
        admin.setRoles(new HashSet(roleService.findList(roles)));
        admin.setSalt("ddddd");
        logger.info("admin {}", admin);
        adminService.save(admin);

        return "redirect:/admin/role/add";
    }

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String displayList(ModelMap model) {

        return "/admin/employee/list";
    }

    /**
     * datatables 分页查询 条件查询
     *
     * @param iDisplayLength
     * @param iDisplayStart
     * @param sColName
     * @param sSortDir_0
     * @param sSearch
     * @param sEcho
     * @return
     */
    @RequestMapping(value = "/getDatatables")
    @ResponseBody
    public TableData<AdminModel> getByDatatables(int iDisplayLength,
            int iDisplayStart,
            String sColName,
            String sSortDir_0,
            String sSearch,
            int sEcho) {
        Pageable pageable = new PageRequest(0, 25);
        Page<AdminModel> list = adminService.find(pageable);
        logger.info("list {}", list.getContent());

        TableData<AdminModel> table = new TableData(list, sEcho, false);
        logger.info("table {}", table);
        return table;
    }

}
