<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
		<h3>AlteraTarefa</h3>
		<%-- valida o descricao do objeto tarefa --%>
		<form:errors path="tarefa.descricao" />
		<form action="alteraTarefa" method="post">
			<label>Descrição</label>
			<input name="id" type="hidden" value="${tarefa.id}">
			<textarea rows="5" cols="100" name="descricao">${tarefa.descricao}</textarea>
			<button type="submit">Altera</button>
		</form>
	</fieldset>
</body>
</html>