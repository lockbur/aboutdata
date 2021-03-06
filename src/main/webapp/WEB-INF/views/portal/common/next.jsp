<%-- 
    Document   : single
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row row-sm">
    <div class="text-white">
        <h5 class="font-thin m-b">页码 ${page}/${pages.totalPages} 
            <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                <span class="bar1 a1 bg-primary lter"></span>
                <span class="bar2 a2 bg-info lt"></span>
                <span class="bar3 a3 bg-success"></span>
                <span class="bar4 a4 bg-warning dk"></span>
                <span class="bar5 a5 bg-danger dker"></span>
            </span>
        </h5>
    </div>
    <c:forEach items="${pages.content}" var="photos" varStatus="idx">
        <div class="col-xs-6 col-sm-4 col-md-3">
            <div class="item">
                <div class="pos-rlt">
                    <div class="item-overlay opacity r r-2x bg-black">
                        <c:if test="${appBean.getCurrentUser() != null}">
                            <div class="text-info padder m-t-sm text-sm">
                                <button  data-photos-id="${photos.id}" class="pull-right addFavorite" data-toggle="class">
                                    <i class="fa fa-heart text-active text-danger"></i>
                                    <i class="fa fa-heart-o text"></i>
                                </button>
                            </div>
                        </c:if>
                        <div class="center text-center m-t-n">
                            <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-control-play i-2x"></i></a>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r- img-full"></a>
                </div>
                <div class="wrapper-sm" ></div>
            </div>
        </div>
    </c:forEach>
</div>


