<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'media.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
	<link href="jsp/admin/css/select.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jsp/admin/js/jquery.js"></script>
	<script type="text/javascript" src="jsp/admin/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="jsp/admin/js/select-ui.min.js"></script>
	<script type="text/javascript" src="jsp/admin/editor/kindeditor.js"></script>
	
	<script type="text/javascript">
	    KE.show({
	        id : 'content7',
	        cssPath : './index.css'
	    });
	  </script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">信息管理</a></li>
    <li><a href="#">媒体聚焦</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
     <form action="news/addNews" method="post">
		<ul class="forminfo">
			<li><label>文章标题</label>
			<input name="newsTitle" type="text" class="dfinput" placeholder="请填写标题" /><i>标题不能超过30个字符</i></li>
			<li><label>发布时间</label><input name="newsTime" type="date" class="dfinput" /></li>
			<li><label>编辑人</label><input name="newsAuthor" type="text" class="dfinput" placeholder="请填写编辑人"/><i>标题不能超过10个字符</i></li>
			<li><label>来源</label><input name="newsSource" type="text" class="dfinput" value="" placeholder="请填写来源"/></li>
			<li>
            <label>政策内容<b>*</b></label>
            <textarea id="content7" name="newsContent" style="width:700px;height:250px;visibility:hidden;"></textarea>   
            </li>
			<li><label>&nbsp;</label><input name="" type="submit"class="btn" value="提交" /></li>
		</ul>
    </form>
	</div>
</body>
</html>
