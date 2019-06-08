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
	            action = "<%=path %>/bxmanatg.action?index=1";
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
			             action = "<%=path %>/bxmanatg.action?index="+pageNo;
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
		        action = "<%=path %>/bxmanatg.action?index="+pageNo;
		        submit();
		    }
		}
        
        function last()
		{ 
		   var totlePage='<%=totlePage%>';
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/bxmanatg.action?index="+totlePage;
	            submit();
	        }
		}
		
		function changesearch()
		{
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/bxmanatg.action?index=1";
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
<!--<form id="memberForm">-->
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">My repair</strong> </div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li>Search：</li>
        <form id="memberForm">
        <li>
          <input type="text" placeholder="Please enter a search title" name="titles" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > Search</a></li>
          </form>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th>Student</th>
        <th>Repair title</th>
        <th>Repair content</th><!--报修内容  -->
        <th>Repair time</th><!-- 报修时间 -->
         <th>Type</th>
          <th>Status</th>
         <th>Repair man</th>
        <th>Repair time</th><!-- 维修时间 -->
        <th>Repair content</th><!-- 维修内容 -->
        <th width="310">Operating</th>
      </tr>
       <%
			for(int i = 0;i<list.size();i++){
				Bx bean = (Bx)list.get(i);
			%>
         <tr>
          <td><%=bean.getStunames() %></td>
          <td><%=bean.getTitles() %></td>
          <td><%=bean.getDescs() %></td>
         <td><%=bean.getTimes() %></td>
           <td><%=bean.getTypes() %></td>
           
              <td><%=bean.getStates() %></td>
                 <td><%=bean.getYgnames() %></td>
                    <td><%=bean.getHtimes() %></td>
                       <td><%=bean.getHfdescs() %></td>
          <td><div class="button-group"> 
          <a class="button border-main" href="<%=path %>/jlmana.action?id=<%=bean.getId()%>"><span class="icon-edit"></span>Communicate</a>
           <a class="button border-red" href="<%=path %>/bxjgadd.jsp?id=<%=bean.getId()%>" >
           <span class="icon-trash-o"></span> Submit results</a> </div></td>
        </tr>
        <%} %>
      <tr>
        <td colspan="8"><div class="pagelist">
         <a href="#" onclick="frist()">Home</a> <a href="#" onclick="back()">Previous page</a> <a href="#" onclick="next()">Next page</a><a href="#"  onclick="last()">Last page</a> 
         </div></td>
      </tr>
    </table>
  </div>
<!--</form>-->
</body>
</html>