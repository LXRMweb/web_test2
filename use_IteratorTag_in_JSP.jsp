<%--
	��JSP��ʹ���Զ���ı�ǩ(��Ӧ��cmy.tagdemo.HelloTag�ࣩ
--%>
<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="mytag" uri="lxrm_mytags"%>
<!-- ����prefix��ֵ��ʾʹ���Զ����HelloTagʱ��ǰ׺���൱�ڡ�jsp��forward���е�jsp 
		uri��ֵ����HelloTag����Ӧ�ı�ǩ�����ļ�*.tld��web.xml�е�ӳ��·��-->
<html>
	<head>
		<title>JSP�еı��ʽ����ExpressionLanguage</title>
	</head>
	
	<body>
		<% request.setCharacterEncoding("GBK"); %>
		<%
			List<String> all=new ArrayList<String>();
			all.add("cmy");
			all.add("lxrm");
			all.add("xn");
			request.setAttribute("alluser",all);
		%>
		<!-- mytag��Ӧ��prefix��ֵ��
			 iterator��Ӧ��mytags.tld��ǩ�����ļ���<tag>Ԫ���µ�<name>��Ԫ�ض�Ӧ��ֵ -->
		<mytag:findAttribute scope="request" name="alluser"><!-- ��request��Χ�Ƿ����alluser���ԣ��������ڣ���SKIP_BODY�������ڣ���ִ�б�ǩ�壬��ʹ���Զ����iterator��ǩ���alluser�е�Ԫ�� -->
			<mytag:iterator scope="request" name="alluser" each="user"><!-- ������� -->
				<h1>�û���${user}</h1>
			</mytag:iterator>
		</mytag:findAttribute>
	</body>
</html>