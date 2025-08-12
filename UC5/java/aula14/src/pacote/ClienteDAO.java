package pacote;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
	
	public boolean existeCliente(int id) {
	    String sql = "SELECT COUNT(*) FROM clientes WHERE id = ?";
	    try (Connection conn = Conexao.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();
	        rs.next();
	        return rs.getInt(1) > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	
	public void inserir(Cliente cliente) {
	    String sql = "INSERT INTO clientes (nome, email) VALUES (?, ?)";
	    try (Connection conn = Conexao.getConnection(); 
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        
	        stmt.setString(1, cliente.getNome());
	        stmt.setString(2, cliente.getEmail());
	        stmt.executeUpdate();
	        
	        System.out.println("Cliente cadastrado com sucesso.");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	// 1️ melhoria... Mensagem caso nao haja clientes
	public List<Cliente> listarClientes() {
	    List<Cliente> lista = new ArrayList<>();
	    String sql = "SELECT * FROM clientes";
	    
	    try (Connection conn = Conexao.getConnection(); 
	         PreparedStatement stmt = conn.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {
	        
	        while (rs.next()) {
	            Cliente cliente = new Cliente();
	            cliente.setId(rs.getInt("id"));
	            cliente.setNome(rs.getString("nome"));
	            cliente.setEmail(rs.getString("email"));
	            lista.add(cliente);
	        }
	        
	        if (lista.isEmpty()) {
	            System.out.println("Nenhum cliente cadastrado no momento.");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return lista;
	}
	
	// 2️ melhoria... verificaao antes de atualizar
	public void atualizar(Cliente cliente) {
	    String sqlVerificar = "SELECT COUNT(*) FROM clientes WHERE id = ?";
	    String sqlAtualizar = "UPDATE clientes SET nome=?, email=? WHERE id=?";
	    
	    try (Connection conn = Conexao.getConnection()) {
	        try (PreparedStatement stmtVerificar = conn.prepareStatement(sqlVerificar)) {
	            stmtVerificar.setInt(1, cliente.getId());
	            ResultSet rs = stmtVerificar.executeQuery();
	            rs.next();
	            
	            if (rs.getInt(1) == 0) {
	                System.out.println("O ID informado não existe. Atualização cancelada.");
	                return;
	            }
	        }
	        
	        try (PreparedStatement stmt = conn.prepareStatement(sqlAtualizar)) {
	            stmt.setString(1, cliente.getNome());
	            stmt.setString(2, cliente.getEmail());
	            stmt.setInt(3, cliente.getId());
	            stmt.executeUpdate();
	            System.out.println("Cliente atualizado com sucesso!");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	// 3️ Melhoria... verificacao antes de deletar
	public void deletar(int id) {
	    String sqlVerificar = "SELECT COUNT(*) FROM clientes WHERE id = ?";
	    String sqlDeletar = "DELETE FROM clientes WHERE id=?";
	    
	    try (Connection conn = Conexao.getConnection()) {
	        try (PreparedStatement stmtVerificar = conn.prepareStatement(sqlVerificar)) {
	            stmtVerificar.setInt(1, id);
	            ResultSet rs = stmtVerificar.executeQuery();
	            rs.next();
	            
	            if (rs.getInt(1) == 0) {
	                System.out.println("O ID informado não existe. Nenhuma exclusão realizada.");
	                return;
	            }
	        }
	        
	        try (PreparedStatement stmt = conn.prepareStatement(sqlDeletar)) {
	            stmt.setInt(1, id);
	            stmt.executeUpdate();
	            System.out.println("Cliente removido com sucesso.");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
}
