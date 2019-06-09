<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
	Pagination p = (Pagination)request.getAttribute("page");
	String id = request.getAttribute("id").toString();
	int totleNum = p.getTotle();
	int totlePage = p.getTotlePage();
	int currentPage = p.getIndex();
	List list = p.getData();
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
<script type="text/javascript">
        
        function frist()
		{
		 	with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/jlmana.action?index=1";
	            submit();
	        }
		}
        
        
		function back()
		{
		    var pageNo= '<%=currentPage%>';
		    if(pageNo<2){
		 	   alert("It is already the first page");
		 	   return;
		    }else{
		 	   pageNo=Number(pageNo)-1;
		    }
				 with (document.getElementById("memberForm")) {
			            method = "post";
			             action = "<%=path %>/jlmana.action?index="+pageNo;
			            submit();
			        }
		}
        
		function next()
		{
			   var pageNo= '<%=currentPage%>';
			   var totlePage='<%=totlePage%>';
		    if(pageNo==totlePage){
		 	   alert("Currently the last page");
		 	   return;
		    }else{
		 	   pageNo=Number(pageNo)+1;
		    }  
		    with (document.getElementById("memberForm")) {
		        method = "post";
		        action = "<%=path %>/jlmana.action?index="+pageNo;
		        submit();
		    }
		}
        
        function last()
		{ 
		   var totlePage='<%=totlePage%>';
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/jlmana.action?index="+totlePage;
	            submit();
	        }
		}
		
		function changesearch()
		{
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/jlmana.action?index=1";
	            submit();
	        }
		}
	
		function modify(id){
			window.location.href="<%=path %>/stumodifybefore.action?id="+id;
		}
		function bmyg(id){
			window.location.href="<%=path %>/bmygmana.action?bmid="+id;
		}
		function del(id){
			window.location.href="<%=path %>/studel.action?id="+id;
		}
		</script>
</head>
<body>
<form id="memberForm">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> Exchange list</strong> </div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="<%=path %>/jladd.jsp?id=<%=id %>"> Add</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th>Spokesman</th>
        <th>Content</th>
        <th>Time</th>
      </tr>
       <%
			for(int i = 0;i<list.size();i++){
				Jl bean = (Jl)list.get(i);
			%>
         <tr>
          <td><%=bean.getNames() %></td>
          <td><%=bean.getDescs() %></td>
          <td><%=bean.getTimes() %></td>
        </tr>
        <%} %>
    </table>
  </div>
</form>
</body>
</html>