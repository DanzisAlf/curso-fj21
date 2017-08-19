<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lista</title>
</head>
<body>
	<a href="novaTarefa"> Criar nova Tarefa</a>
	<br />
	<br />
	<fieldset>
	<table>
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalização</th>
			<th>Data de Finzlização</th>
		</tr>
	<c:forEach items="${tarefas}" var="tarefa" varStatus="id">
		<tr style="background-color: ${id.count% 2 == 0 ? 'cyan' : 'gray'  }">
			<td>${tarefa.id}</td>
			<td>${tarefa.descricao}</td>
			<td>
				<c:if test="${tarefa.finalizado eq false}">
					Não finalizado
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					Finalizado
				</c:if>
			</td>
			<td>
			 	<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" />
			 </td>
			 <td>
			 	<form action="removeTarefa" method="post">
			 		<input name="id" type="hidden" value="${tarefa.id}">
			 		<button type="submit">Deletar</button>
			 	</form>
			 <td>
			 	<form action="paginaAlteraTarefa" method="post">
			 		<input name="id" type="hidden" value="${tarefa.id}">
			 		<button type="submit">Alterar</button>
			 	</form>
		 </tr>
	</c:forEach>
	</table>
	</fieldset>
</body>
</html>