/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servelts;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aluno
 */
@WebServlet(name = "Nv1", urlPatterns = {"/Nv1"})
public class Nv1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Passo1
        float areapec = Float.parseFloat(request.getParameter("areapecuaria"));
        //Passo2
        float bovino = Float.parseFloat(request.getParameter("bovinos"));
        float bovinocria = Float.parseFloat(request.getParameter("bovinoscria"));
  
        float vacadecria = Float.parseFloat(request.getParameter("vacasdecria"));
        float vacasdedescarte = Float.parseFloat(request.getParameter("vacasdedescarte"));
        float terneiro = Float.parseFloat(request.getParameter("terneiros"));
        float terneira = Float.parseFloat(request.getParameter("terneiras"));
        float novilhos1 = Float.parseFloat(request.getParameter("novilhos1"));
        float novilhas1 = Float.parseFloat(request.getParameter("novilhas1"));
        float novilhos2 = Float.parseFloat(request.getParameter("novilhos2"));
        float novilhas2 = Float.parseFloat(request.getParameter("novilhas2"));
        float novilhos3 = Float.parseFloat(request.getParameter("novilhos3"));
        float touros = Float.parseFloat(request.getParameter("touros"));
        
        float lotm;
        float percentual;
        
        if(bovino > 0)
        {   
            lotm = bovino / areapec;
            percentual = (bovinocria * 100) / bovino;     
        }
        else
        {
            float total = vacadecria + vacasdedescarte + terneiro + terneira + novilhos1 + novilhas1 + novilhos2 + novilhas2 + novilhos3 + touros;
            lotm = total / areapec;
            percentual = ((vacadecria + touros + novilhas1 + novilhas2 + terneiro + terneira) * 100) / total;
        }
        
        //Passo3
        float bovinosano = Float.parseFloat(request.getParameter("bovinosanual"));
        
        float areamedia = bovinosano / areapec;
        
        //Passo4
        float medicamento = Float.parseFloat(request.getParameter("medicamentos"));
        float maodeobras = Float.parseFloat(request.getParameter("maodeobra"));
        float maquina = Float.parseFloat(request.getParameter("maquinas"));
        float dispesa = Float.parseFloat(request.getParameter("dispesas"));
        
        float totalcusto = medicamento + maodeobras + maquina + dispesa;
        float totalcustocria = (totalcusto * percentual) / 100;
        float custoproducao = totalcustocria / areapec;
        
        
        request.setAttribute("areamedia", areamedia);
        request.setAttribute("lotm", lotm);
        request.setAttribute("percentual", percentual);
        request.setAttribute("totalcusto", totalcusto);
        request.setAttribute("totalcustocria", totalcustocria);
        request.setAttribute("custoproducao", custoproducao);
        
        
        request.getRequestDispatcher("Lv1-Saida.jsp").forward(request, response);
    }
}
