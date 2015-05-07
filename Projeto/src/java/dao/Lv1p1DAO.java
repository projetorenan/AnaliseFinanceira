/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Lv1p1;


/**
 *
 * @author Lucas
 */
public class Lv1p1DAO {
     public Boolean inserir (Lv1p1 lv1p1)
    {
        
        Boolean retorno = false;
        //Mostra o sql de insert da tabela
        String sql = "INSERT INTO lv1p1 (area_apro,usuario_id)" +
                "VALUES (?,?)";
        //Prepara a conexão
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
       try{ 
        pst.setDouble(1, lv1p1.getArea_apro());
        pst.setInt(2, lv1p1.getUsuario_id());
        
        //Executa o sql no bancod de dados
        pst.executeUpdate();
                retorno = true;
       }
       
       catch(Exception ex)
       {
           ex.printStackTrace();
           retorno = false;
       }
        
       return retorno;
 
    }
     
      public Boolean excluir(Lv1p1 lv1p1){
        Boolean retorno = false;
        String sql = "DELETE FROM lv1p1 where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {           
            pst.setInt(1,lv1p1.getId());
        
        if(pst.executeUpdate() > 0){
            retorno = true;
        }
        
        
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
        
    }
      public List<Lv1p1> listar()
    {
        
        //crio a lista de jogadores
        
        List<Lv1p1> lista = new ArrayList<Lv1p1>();
        String sql = "SELECT * FROM lv1p1";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
        try {
            //Executo o aql e jogo em um resultSet
            ResultSet res = pst.executeQuery();
            //Eqaunto tiver REGISTRO eu vou relacionar
            //com a minha classe Jogador e adicionar na lista 
            while(res.next())
            {
                Lv1p1 lv1p1 = new Lv1p1();
                lv1p1.setArea_apro(res.getDouble("area_apro"));
                lv1p1.setUsuario_id(res.getInt("usuario_id"));                
                lista.add(lv1p1);
            }
            } catch(SQLException ex){
               
               ex.printStackTrace();
            }
        return lista;
        }
      
      
      public Boolean atualizar(Lv1p1 lv1p1){
        Boolean retorno = false;
        String sql = "UPDATE lv1p1 set area_apro =? where id=?";
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try {
            
            
            pst.setDouble(1,lv1p1.getArea_apro());
            pst.setDouble(2, lv1p1.getUsuario_id());
        
        if(pst.executeUpdate() > 0){
            retorno = true;
        }
        
        
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Lv1p1DAO.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
        
    }
      
}
