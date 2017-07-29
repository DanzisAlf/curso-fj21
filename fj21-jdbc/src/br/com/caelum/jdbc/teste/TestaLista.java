package br.com.caelum.jdbc.teste;

import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {

	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		
		//iterando a lista de contatos for enhanced
		for (Contato contato : contatos){
			System.out.println("Nome "+ contato.getNome());
			System.out.println("Email "+ contato.getEmail());
			System.out.println("Endereco"+ contato.getEndereco());
			System.out.println("Data Nascimento "+ contato.getDataNascimento().getTime() + "\n");
		}
	}

}
