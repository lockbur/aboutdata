<%-- 
    Document   : profile
    Created on : 2015-8-30, 18:32:26
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <meta name="description" content="高清壁纸,桌面壁纸" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
        <link rel="shortcut icon" href="favicon.ico" />
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "//hm.baidu.com/hm.js?15dcd777f63423d27dbca739598638ed";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
    </head>
    <body>
        <section class="vbox">
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>
            <section>
                <section class="container scrollable m-b m-t">
                    <section class="hbox stretch">
                        <aside class="aside-lg bg-light lter b-r">
                            <section class="vbox">
                                <section class="scrollable">
                                    <div class="wrapper">
                                        <div class="text-center m-b m-t">
                                            <a href="#" class="thumb-lg avatar">
                                                <img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="...">
                                                <i class="fa fa-edit md b-white bottom"></i>
                                            </a>
                                            <div>
                                                <div class="h3 m-t-xs m-b-xs">${member.username}</div>
                                                <small class="text-muted"><i class="fa fa-map-marker"></i> 中国,北京</small>
                                            </div>                
                                        </div>
                                        <div class="panel wrapper">
                                            <div class="row text-center">
                                                <div class="col-xs-6">
                                                    <a href="#">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-camera"></i></span>
                                                        <small class="text-muted">头像</small>
                                                    </a>
                                                </div>
                                                <div class="col-xs-6">
                                                    <a href="#">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-user"></i></span>
                                                        <small class="text-muted">账户</small>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified">
                                            <a href="${pageContext.request.contextPath}/member/settings/account" class="btn btn-primary">
                                                <i class="fa fa-edit"></i> 修改资料
                                            </a>
                                            <a href="#" class="btn btn-info"><i class="fa fa-upload"></i> 上传图片</a>
                                            <a href="#" class="btn btn-success"><i class="fa fa-star"></i> 收藏列表</a>
                                        </div>
                                        <div>
                                            <h4 class="text-uc text-xs text-muted">用户描述信息</h4>
                                            <p>本站主要涉及内容为对自己看到的互联网知识的总结，有些内容很可能引用了你的观点，但没有注明出处，请未注明出处的朋友发邮件至我邮箱。</p>
                                        </div>
                                        <div>    
                                            <h4 class="text-uc text-xs text-muted">我的关注</h4> 
                                            <div class="row row-sm">
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Spring rain</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Hope</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Miya</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Listen wind</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Soyia Jess</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Breaking me</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Pett JA</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Nothing</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Willion</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Panda Style</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lionie</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Hook Me</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Gossi</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/user.jpg" alt="" class="img-circle img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Tempered Song</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </aside>
                        <aside class="bg-white">
                            <section class="vbox">
                                <header class="header bg-light lt">
                                    <ul class="nav nav-tabs nav-white">
                                        <li class="active"><a href="#activity" data-toggle="tab">最新动态</a></li>
                                    </ul>
                                </header>
                                <section class="scrollable">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="activity">
                                            <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                                                <li class="list-group-item">
                                                    <a href="#" class="thumb-sm pull-left m-r-sm">
                                                        <img src="${pageContext.request.contextPath}/assets/images/user.jpg" class="img-circle">
                                                    </a>
                                                    <a href="#" class="clear">
                                                        <small class="pull-right">3 分钟以前</small>
                                                        <strong class="block">Lockbur</strong>
                                                        <small>这只是一个初步测试功能.</small>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </aside>
                    </section>
                </section>
            </section>
            <footer class="footer bg-black dker">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>
    </body>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                    ]
                });
            });
    </script>
</html>

