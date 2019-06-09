<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>Log in</title>  
    <link rel="stylesheet" href="<%=path %>/css/pintuer.css">
    <link rel="stylesheet" href="<%=path %>/css/admin.css">
    <script src="<%=path %>/js/jquery.js"></script>
    <script src="<%=path %>/js/pintuer.js"></script>  
    <script language="javascript">
 function check1()
 {                                                                                         
      if(document.ThisForm.username.value=="")
	 {
	 	alert("Please enter user name");
		document.ThisForm.username.focus();
		return false;
	 }
	 if(document.ThisForm.password.value=="")
	 {
	 	alert("Please enter your password");
		document.ThisForm.password.focus();
		return false;
	 }
	 document.ThisForm.submit();
 }

 </script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
          <form name="ThisForm" method="POST" action="<%=path %>/login.action" >
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>Campus dormitory repair system</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="username" id="username" placeholder="Login account" data-validate="required:Please fill in the account number" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="password"   id="password" placeholder="Login password" data-validate="required:Please fill in the password" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                </div>
                <div style="padding:30px;">
                <input name="button" type="button" class="button button-block bg-main text-big input-big" value="Log in" onClick="check1()"> &nbsp;
            </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>