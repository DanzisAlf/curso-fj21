<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Contato</title>
	<link href="css/jquery.css" rel="stylesheet" >
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<body>
<header>
	<c:import url="cabecalho.jsp" />

</header>

	<%--  por padrao ele deixa get - info na url .servlet adicionaContato--%>
	<fieldset>
		<form action="adicionaContato" method="post">
			
			<label for="nome">Nome:</label> 
			<input type="text" name="nome" placeholder="digite seu nome" id="nome" /><br />
			 
			E-mail:<input type="email" name="email" placeholder="digite seu email" /><br />
			
			Endereço:<input type="text" name="endereco"	placeholder="digite endereço" /><br /> 
			
			Data Nascimento:<caelum:campoData id="dataNascimento" /><br /> 
			
			<input type="submit" value="Gravar" />
		
		</form>
	</fieldset>
	<footer>
		<c:import url="rodape.jsp" />
	
	</footer>
</body>
</html>