<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="<%=path %>/css/pintuer.css">
<link rel="stylesheet" href="<%=path %>/css/admin.css">
<script src="<%=path %>/js/jquery.js"></script>
<script src="<%=path %>/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>Increase</strong></div> <!--增加-->
  <div class="body-content">
    <form action="<%=path %>/bxadd.action" method="post" name="userLogin" class="form-x">
      <div class="form-group">
        <div class="label">
          <label> Repair title：</label><!-- 报修标题 -->
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="titles" id="titles" data-validate="required:Please enter the title of the repair" />
          <div class="tips"></div>
        </div>
      </div>
        <div class="form-group">
          <div class="label">
            <label>Type：</label>
          </div>
          <div class="field">
            <select name="types" id="types" class="input w50">
              <option value="General repair">General repair</option> <!-- 普通报修 -->
              <option value="Emergency repair">Emergency repair</option><!--紧急报修  -->
            </select>
            <div class="tips"></div>
          </div>
        </div>
      <div class="form-group">
        <div class="label">
          <label>Content：</label><!-- 内容 -->
        </div>
        <div class="field">
          <textarea name="descs" class="input" style="height:450px; border:1px solid #ddd;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> Submit</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>