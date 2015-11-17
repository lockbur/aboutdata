<%-- 
    Document   : reset
    Created on : 2015-11-15, 17:39:29
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>找回密码 - 更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section class="w-f-md m-t">
                <!--content-->
                <section class="padder">
                    <div class="m-lg"></div>
                    <br/>
                    <br/>
                    <br/>
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <h3 class="m-t-none m-b text-muted">忘记密码</h3>
                            <div class="line line-dashed b-b line-lg pull-in"></div>
                            <c:if test="${not empty errorMessage}">
                                <div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <i class="fa fa-ban-circle"></i><strong>错误信息!</strong>${errorMessage}.
                                </div>
                            </c:if>
                            <form role="form" id="inputForm" action="${pageContext.request.contextPath}/password/reset" method="post">
                                <div class="form-group">
                                    <label>用户名</label>
                                    <strong>${member.username}</strong>
                                    <input type="hidden" name="username" value="${member.username}">
                                    <input type="hidden" name="key" value="${key}">
                                </div>
                                <div class="form-group">
                                    <label>新密码</label>
                                    <input type="password" name="password" class="form-control bg-dark {required:true}" placeholder="请输入新密码">
                                </div>
                                <div class="form-group">
                                    <label>确认密码</label>
                                    <input type="password" name="repassword" class="form-control bg-dark {required:true}" placeholder="确认密码">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-default btn-block">
                                        <strong><i class="fa fa-sign-in"></i> 重置密码</strong>
                                    </button>
                                </div>                
                            </form>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </section>
                <!--content//end-->
            </section>   
            <footer class="footer bg-black dker navbar-fixed-bottom">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>

    </body>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
    <!--引入验证的js代码--->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-validation/jquery.validate.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-validation/jquery.validate.methods.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-validation/jquery.metadata.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-validation/jquery.validate.zh-CN.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //表单验证
            $("#inputForm").validate({
                errorClass: 'text-danger-lter',
                validClass: "text-success"
            });
            //背景图片
            $('body').vegas({
                timer: false,
                slides: [
                    {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                ]
            });
            $("img").error(function () {
                $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
            });
        });
    </script>
</html>


