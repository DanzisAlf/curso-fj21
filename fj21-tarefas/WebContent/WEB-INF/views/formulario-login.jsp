<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<h2>Login das tarefas</h2>
	<fieldset>
		<form action="efetuaLogin" method="post">
			<label>Login:</label>
			<input type="text" placeholder="Usuario" name="login">
			<label>Senha:</label>
			<input type="password" placeholder="Senha" name="senha">
			<button type="submit">Envia</button>
		</form>
	</fieldset>

</body>
</html>