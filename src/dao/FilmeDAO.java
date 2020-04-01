package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Filme;

public class FilmeDAO {

	private Connection bd;

	public FilmeDAO(Connection bd) {
		this.bd = bd;
	}

	public void inserir(Filme filme) throws SQLException {
		String sql = "INSERT INTO filme (nome, genero, valor, disponivel, promocao, valor_promocao) VALUES (?,?,?,?,?,?)";
		PreparedStatement comando = bd.prepareStatement(sql);
		
		comando.setString(1, filme.getNome());
		comando.setString(2, filme.getGenero());
		comando.setDouble(3, filme.getValor());
		comando.setString(4, filme.getDisponivel());
		comando.setString(5, filme.getPromocao());
		comando.setDouble(6, filme.getValorPromocao());
		comando.execute();
	}

	public void alterar(Filme filme) throws SQLException {
		String sql = "UPDATE filme SET nome=?, genero=?, valor=?, disponivel=?, promocao=?, valor_promocao=? WHERE codigo=?";
		PreparedStatement comando = bd.prepareStatement(sql);
		comando.setString(1, filme.getNome());
		comando.setString(2, filme.getGenero());
		comando.setDouble(3, filme.getValor());
		comando.setString(4, filme.getDisponivel());
		comando.setString(5, filme.getPromocao());
		comando.setDouble(6, filme.getValorPromocao());
		comando.setInt(7, filme.getCodigo());
		comando.execute();
	}

	public List<Filme> buscarTodos() throws SQLException {
		String sql = "SELECT * FROM filme ORDER BY codigo";
		PreparedStatement comando = bd.prepareStatement(sql);
		ResultSet cursor = comando.executeQuery(sql);
		List<Filme> listaFilmes = new ArrayList<Filme>();
		while (cursor.next()) {
			Filme filme = new Filme();
			filme.setCodigo(cursor.getInt("codigo"));
			filme.setNome(cursor.getString("nome"));
			filme.setGenero(cursor.getString("genero"));
			filme.setValor(cursor.getDouble("valor"));
			filme.setDisponivel(cursor.getString("disponivel"));
			filme.setPromocao(cursor.getString("promocao"));
			filme.setValorPromocao(cursor.getDouble("valor_promocao"));
			listaFilmes.add(filme);
		}
		return listaFilmes;
	}

	public void excluir(Filme filme) throws SQLException {
		String sql = "DELETE FROM filme WHERE codigo=?";
		PreparedStatement comando = bd.prepareStatement(sql);
		comando.setInt(1, filme.getCodigo());
		comando.execute();

	}
}
