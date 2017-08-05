<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bem Vindo</title>
</head>
<body>
	<%-- comentario --%>
	<%
		String mensagem = "bem vindo";
	%>
	<%
		out.println(mensagem);
	%>
	<br />
	<%
		String desenvolvido = "desenvolvido por";
	%>
	<br />
	<%=desenvolvido%>
	<br />

A hora é
<%=Calendar.getInstance().getTime() %>

	<%
		System.out.println("tudo ok");
	%>
</body>
</html>