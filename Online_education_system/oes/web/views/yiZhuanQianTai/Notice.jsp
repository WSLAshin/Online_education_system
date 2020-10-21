<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cn.st.entity.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://gx.edu/dTags" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>猿来入此英语教研室/情景英语平台</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<link href="${resourcePath}/css/styles2.css" rel="stylesheet">
<link rel="shortcut icon" href="./favicon.ico">
</head>
<body>
<div class="t-line"></div>
<div class="header" style="">
  <div class="tools clearfix" style="width:100%;background-color:#5CACEE;">
      <p class="welcome">
         <img alt="" src="${resourcePath}/images/slogo.png" height="72" width="72px;"
          style="position:absolute;left:178px;top:-15px; border-radius:80px;border:1px solid white;"/>
       </p>
       <h1  style="position:absolute;left:20%;top:-15px; font-size:21pt;color:white;">猿 来 入 此 英 语 情 景 教 学 平 台</h1>
       <h4  style="position:absolute;left:20%;top:5px; font-size:10pt;color:white;">QIAN &nbsp;NAN  &nbsp;YI ZHUAN&nbsp; YINGYU&nbsp; QINGJING &nbsp;&nbsp;JIAOXUE PINGTAI</h4>
  </div>
  <div class="nav-bg">
     <ul class="nav">
      <li style="margin-left:100px;font-size:12pt;"><a  class="active" href="${ctx}/InitIndexInf">学院首页</a></li>
	  <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/projectIntroduction">项目介绍</a></li>
      <li style="margin-left:56px;font-size:12pt;"><a  href="${ctx}/yiZhuanDetails/teachersDetails">教师风采</a></li>
      <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/videoAppreciation">情景教学欣赏</a></li>
     <!--  <li style="margin-left:30px;font-size:12pt;"><a href="javascript:;">在线题库</a></li> -->
      <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/dataDowload">下载专区</a></li>
    </ul>
  </div>
</div>
<div class="warp">
  <div class="ads">
    <img alt="" src="${resourcePath}/images/banner.jpg" width="100%"/>
  </div>
  <div class="listpage clearfix">
    <div class="lmenu">
      <h2>分类导航</h2>
      <ul class="menus">
        <li><a class="menulink active" href="#">新闻公告</a></li>
       <!--  <li><a class="menulink" href="#">信息资源</a></li>
        <li><a class="menulink" href="#">科技查新</a></li>
        <li><a class="menulink" href="#">查收查引</a></li>
        <li><a class="menulink" href="#">查新站简介</a></li>
        <li><a class="menulink" href="#">委托须知</a></li>
        <li><a class="menulink" href="#">业务流程</a></li>
        <li><a class="menulink" href="#">收费标准</a></li>
        <li><a class="menulink" href="#">规章制度</a></li>
        <li><a class="menulink" href="#">常见问题</a></li>
        <li><a class="menulink" href="#">信息资源</a></li> -->
      </ul>
    </div>
    <div class="rcon">
      <ol class="breadcrumb">
        <li><a href="#">首页</a></li>
        <li class="active"> - 新闻公告 - 详细内容</li>
      </ol>
      <div class="newscon">
         <c:if test="${notice==null}">
	        <c:forEach items="${page.result}" var="item">
	        <div class="news-tit mt20">${item.notice_tiltle}</div>
	        <div class="news-remark">来源：<span class="mr40">${item.pub_name}</span>发布时间：<span class="mr40">${item.create_time}</span>浏览次数：<span>328<span>次</span></span>
	        </div>
	        <div class="news-info">
	          <p class="pmb30">${item.notice_content}</p>
	          <p class="ptr">${item.create_time}</p>
	        </div>
	         </c:forEach>
	        <div style="width:60%;">总${page.total}条数据</div><d:pagination pages="${page}" /><br>
         </c:if>
          <c:if test="${notice!=null}">
                <div class="news-tit mt20">${notice.notice_tiltle}</div>
	        <div class="news-remark">来源：<span class="mr40">${notice.pub_name}</span>发布时间：<span class="mr40">${notice.create_time}</span>浏览次数：<span>328<span>次</span></span>
	        </div>
	        <div class="news-info">
	          <p class="pmb30">${notice.notice_content}</p>
	          <p class="ptr">${notice.create_time}</p>
	        </div>
          </c:if>
      </div>
    </div>
  </div>
</div>
<div class="footer-bg">
  <div class="footer wc1000">
    <ul class="flink">
      <li>
        <a class="tit" href="javascript:;">友情链接: </a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
       <li>
        <a href="/OnlineLearning/login_users.jsp">我要登录</a>
      </li>
    </ul>
    <p class="mt15">Copyright	© 2019【猿来入此】</p>
  </div>
</div>
<script type="text/javascript" src="${resourcePath}/js/jquery.min.js"></script>
<script type="text/javascript">

</script>
</body>
</html>