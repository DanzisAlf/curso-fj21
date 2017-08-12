<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contato adicionado</title>
</head>
<body>
<header>
	<c:import url="cabecalho.jsp" />

</header>

	<h1>Contato ${param.nome} adicionado</h1>
	<h2>${param.email}</h2>
	<h2>${param.endereco}</h2>
	<h2>${param.dataNascimento}</h2>
	
</body>
</html>