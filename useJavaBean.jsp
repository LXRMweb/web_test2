<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="cmy.javabean.simpledemo.SimpleJavabean"%>
<jsp:useBean id="simple1" scope="page" class="cmy.javabean.simpledemo.SimpleJavabean"/>
<html>
	<head>
		<title>ʹ��DAO���ģʽ����С����վ���ͻ��㣨������ȣ�+��ʾ�㣨jsp/servlet��+ҵ���(DAO1+DAO2+...)+���ݲ�(ԭ�����ʵ�DAO)</title>
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