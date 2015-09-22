<%-- 
    Document   : single
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:forEach items="${pages.content}" var="photo" varStatus="idx">
    <div class="item">
        <div class="pos-rlt">
            <div class="item-overlay opacity r r-2x bg-black">
                <div class="text-info padder m-t-sm text-sm">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o text-muted"></i>
                </div>
                <div class="center text-center m-t-n">
                    <a href="#"><i class="icon-control-play i-2x"></i></a>
                </div>
                <div class="bottom padder m-b-sm">
                    <a href="#" data-toggle="class" class="active">
                        <i class="fa fa-heart-o text-muted text"></i>
                        <i class="fa fa-heart text-danger text-active"></i> 
                    </a>
                </div>
                <div class="top">
                    <span class="pull-right m-t-sm m-r-sm badge bg-white">
                        <i class="fa fa-star text-success"></i>
                        12
                    </span>
                </div>
            </div>
            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m3.jpg" alt="" class="r r-2x img-full"></a>
        </div>
        <div class="padder-v">
            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
            <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
        </div>
    </div>
</c:forEach>

