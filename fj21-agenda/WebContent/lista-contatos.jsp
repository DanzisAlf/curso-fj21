<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lista contatos</title>

</head>
<body>
	<header>
		<c:import url="cabecalho.jsp"></c:import> 
	</header>

	<table>
		<%-- percorre contatos na tabela ele usa a variavel dao.getLista()--%>
		
			<tr>
			
				<td>Nome</td>
				<td>Email</td>
				<td>Endereco</td>
				<td>Data</td>
			
			</tr>
		
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr style="background-color: ${ id.count% 2 == 0 ? 'cyan' : 'gray'  }">



				<td>${contato.nome}</td>

				<c:if test="${empty contato.email }">
					<td>Email nao cadastrado</td>
				</c:if>
				<c:if test="${not empty contato.email }">
					<td><a href="mailto:${contato.email}">${contato.email}</a></td>
				</c:if>


				<td>${contato.endereco}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy"
						value="${contato.dataNascimento.time}" /></td>
				<td>
				<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}&nome=${contato.nome}">Remover</a>
			</tr>
		</c:forEach>
	</table>
</body>
<footer> <c:import url="rodape.jsp"></c:import> </footer>

</html>