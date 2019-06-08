<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String types=request.getSession().getAttribute("userType").toString();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>Campus dormitory repair system</title>  
    <link rel="stylesheet" href="<%=path %>/css/pintuer.css">
    <link rel="stylesheet" href="<%=path %>/css/admin.css">
    <script src="<%=path %>/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="<%=path %>/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />Campus dormitory repair system</h1><!-- 校园宿舍报修系统 -->
  </div>
  <div class="head-l">
   &nbsp;&nbsp;
  &nbsp;&nbsp;
  <a class="button button-little bg-red" href="<%=path %>/loginout.action"><span class="icon-power-off"></span> sign out</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>Menu list</strong></div>
  <h2><span class="icon-user"></span>Basic settings</h2>
  <ul style="display:block">
  <%if(types.equals("1")){ %>
    <li><a href="<%=path %>/ggmana.action" target="right"><span class="icon-caret-right"></span>Announcement management</a></li>
    <li><a href="<%=path %>/stumana.action" target="right"><span class="icon-caret-right"></span>Student management</a></li>
    <li><a href="<%=path %>/ygmana.action" target="right"><span class="icon-caret-right"></span>Employee management</a></li>  
    <li><a href="<%=path %>/bxmanadsh.action" target="right"><span class="icon-caret-right"></span>Repair review</a></li>
    <li><a href="<%=path %>/bxmanaall.action" target="right"><span class="icon-caret-right"></span>Repair inquiry</a></li>
    <%}else if(types.equals("2")){  %>
    <li><a href="<%=path %>/ggmana2.action" target="right"><span class="icon-caret-right"></span>Announcement view</a></li>
    <li><a href="<%=path %>/bxmana.action" target="right"><span class="icon-caret-right"></span>Student repair</a></li>
    <%}else{ %>
     <li><a href="<%=path %>/ggmana2.action" target="right"><span class="icon-caret-right"></span>Announcement view</a></li>
    <li><a href="<%=path %>/bxmanatg.action" target="right"><span class="icon-caret-right"></span>Pending repair</a></li>
    <li><a href="<%=path %>/bxmanawc.action" target="right"><span class="icon-caret-right"></span>Completed repair</a></li>
    <%} %>
  </ul>   
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
</ul>
<!--  <div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>-->
<ul style="display:block">
  <%if(types.equals("1")){ %>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>
    <%}else if(types.equals("2")){  %>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info1.html" name="right" width="100%" height="100%"></iframe>
</div>
    <%}else{ %>
   <div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info2.html" name="right" width="100%" height="100%"></iframe>
</div>
    <%} %>
  </ul>   
<div style="text-align:center;">
</div>
</body>
</html>