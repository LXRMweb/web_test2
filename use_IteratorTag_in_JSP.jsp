<%--
	在JSP中使用自定义的标签(对应于cmy.tagdemo.HelloTag类）
--%>
<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="mytag" uri="lxrm_mytags"%>
<!-- 其中prefix的值表示使用自定义的HelloTag时的前缀，相当于《jsp：forward》中的jsp 
		uri的值则是HelloTag所对应的标签描述文件*.tld在web.xml中的映射路径-->
<html>
	<head>
		<title>JSP中的表达式语言ExpressionLanguage</title>
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
		<!-- mytag对应于prefix的值；
			 iterator对应于mytags.tld标签描述文件中<tag>元素下的<name>子元素对应的值 -->
		<mytag:findAttribute scope="request" name="alluser"><!-- 看request范围是否存在alluser属性，若不存在，则SKIP_BODY，若存在，则执行标签体，即使用自定义的iterator标签输出alluser中的元素 -->
			<mytag:iterator scope="request" name="alluser" each="user"><!-- 迭代输出 -->
				<h1>用户：${user}</h1>
			</mytag:iterator>
		</mytag:findAttribute>
	</body>
</html>