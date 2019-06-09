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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>Increase</strong></div>
  <div class="body-content">
    <form action="<%=path %>/stuadd.action" method="post" name="userLogin" class="form-x">
      <div class="form-group">
        <div class="label">
          <label> Student ID：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="stuno" id="stuno" data-validate="required:Please enter the student number" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label> Password：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="password" id="password" data-validate="required:Please enter the password" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label> Name：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="realname"  id="realname" data-validate="required:Please type in the name" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label> Phone：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="tel" id="tel" data-validate="required:Please enter the phone number" />
          <div class="tips"></div>
        </div>
      </div>
        <div class="form-group">
          <div class="label">
            <label>Gender：</label>
          </div>
          <div class="field">
            <select name="sex" id="sex" class="input w50">
              <option value="male">male</option>
              <option value="female">female</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
     
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit">Submit</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>