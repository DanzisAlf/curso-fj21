package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");

		Contato contato = new Contato();
		contato.setId(id);
		contato.setNome(nome);

		Connection connection = (Connection) request.getAttribute("conexao");

		ContatoDao dao = new ContatoDao(connection);
		System.out.println("excluindo contato " + contato.getNome() + " " + contato.getId());
		dao.exclui(contato);
		return "mvc?logica=ListaContatosLogic";
	}

}
