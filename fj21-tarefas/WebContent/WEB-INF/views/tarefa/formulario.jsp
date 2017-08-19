<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulario</title>
</head>
<body>
	<fieldset>
		<h3>AdicionaTarefa</h3>
		<%-- valida o descricao do objeto tarefa --%>
		<form:errors path="tarefa.descricao" />
		<form action="adicionaTarefa" method="post">
			<label>Descrição</label>
			<textarea rows="5" cols="100" name="descricao"></textarea>
			<button type="submit">Envia</button>
		</form>
	</fieldset>
</body>
</html>