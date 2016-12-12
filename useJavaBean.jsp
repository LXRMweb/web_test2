<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="cmy.javabean.simpledemo.SimpleJavabean"%>
<jsp:useBean id="simple1" scope="page" class="cmy.javabean.simpledemo.SimpleJavabean"/>
<html>
	<head>
		<title>使用DAO设计模式开发小型网站：客户层（浏览器等）+显示层（jsp/servlet）+业务层(DAO1+DAO2+...)+数据层(原子性质的DAO)</title>
	</head>
	<body>
		<%
			SimpleJavabean simple=new SimpleJavabean();
			simple.set_userID("001");
			simple1.set_userID("cmmm");
		%>
		<h1>
			userid:<%=simple.get_userID()%>
			userid:<%=simple1.get_userID()%>
		</h1>
	</body>
</html>