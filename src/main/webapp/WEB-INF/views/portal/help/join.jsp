<%-- 
    Document   : join
    Created on : 2015-11-1, 15:48:00
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <meta name="description" content="高清壁纸,桌面壁纸" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body class="">
        <section class="hbox stretch">
            <!-- .aside -->
            <aside class="bg-light aside b-r animated fadeInLeftBig">
                <section class="vbox">
                    <header class="header b-b navbar">
                        <a class="btn btn-link pull-right visible-xs" data-toggle="class:show" data-target=".nav-primary">
                            <i class="fa fa-bars"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/help" class="navbar-brand">帮助中心</a>
                    </header>
                    <section class="scrollable">
                        <nav class="nav-primary hidden-xs nav-docs">
                            <ul class="nav">
                                <li class="dropdown-header b-b b-light"><em>概述</em></li>
                                <li><a href="#arch">网站架构</a></li>
                                <li><a href="#front">前端开发</a></li>
                                <li><a href="#java">JAVA开发</a></li>
                            </ul>
                        </nav>
                    </section>
                </section>
            </aside>
            <!-- /.aside -->
            <section id="content">
                <section class="vbox">
                    <section class="scrollable bg-light lter" data-spy="scroll" data-target=".nav-primary">
                        <section  id="docs">
                            <div class="clearfix padder">
                                <h3 id="arch">概述</h3>
                                <h5 class="m-t-lg"><strong><a href="http://lockbur.com/" target="_blank">http://lockbur.com</a></strong>是我业余时间开发设计,目前来说,有很多计划和功能都无法达到预期,SO 如果您认为您能帮助到我们,请与我们联系,我们也会非常其期待您加入.</h5>
                                <h3 class="text-success">网站所使用的技术架构</h3>
                                <p id="bootstrap">该网站是使用java语言开发,使用mysql社区版数据库作为系统的数据持久化存储系统</p>
                                <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">1、项目管理使用maven、jenkins做为持久化构建工具.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">2、使用fastDFS存储图片和nginx来做图片资源访问.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">3、使用solr开源服务器作为系统搜索引擎支持.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">4、程序后台架构 spring-MVC,spirng,spr-data,hibernate做技术实现.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">5、开发工具IDE 使用netbeans8.0.2,mysql版本:cummnication-5.6,Java版本 jdk1.7u51,navcat10.1.7</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">6、代码管理,目前代码托管与github上,所以你需要掌握git基本使用技巧或者熟练使用git for window.</span>
                                        </div>
                                    </li>
                                </ul>

                                <h3 id="front" class="text-success">前端开发 <small>技能加点</small></h3>
                                <div class="line"></div>
                                <p id="bootstrap">下面列举的这些技能是必须的,如果你不满足,就不能很好的帮助到我们</p>
                                <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">1、需要掌握git基本使用技巧或者熟练使用git for window.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">2、需要掌握html5和css3.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">3、熟练使用Bootstrap和深入理解jquery插件和使用.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">4、NodeJS,Grunt这不是必须的,但是掌握该项对您的工作会很有帮助.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">5、普通话和开放的人生态度,善于分享.</span>
                                        </div>
                                    </li>
                                </ul>

                                <h3 id="java" class="text-success">JAVA开发</h3>
                                <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">1、需要掌握git基本使用技巧或者熟练使用git for window.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">2、java EE技术规范.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">3、使用过Spring MVC和Hibernate.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">4、熟悉Tomcat和nginx.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">5、Linux环境配置,这项不是必须,这会让你更理解系统的与性能和调优.</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </section>
                    </section>
                </section>
            </section>
        </section>
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.js"></script>
        <!-- App -->
        <script src="js/app.js"></script>  
        <!-- Easy Pie Chart -->
        <script src="js/app.plugin.js"></script>

    </body>
</html>