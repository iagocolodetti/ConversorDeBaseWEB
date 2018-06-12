package br.com.iagocolodetti.cb.controle;

import br.com.iagocolodetti.cb.modelo.Metodos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletCB extends HttpServlet {
    
    private String getResultado(String algarismo, String dabase, String parabase) {
        String resultado;
        try {
            int daBase = Integer.parseInt(dabase);
            int paraBase = Integer.parseInt(parabase);
            resultado = "BASE ("  + dabase + "): " + algarismo
                    + "<br><br>" +
                    "BASE ("  + parabase + "): " + new Metodos().converterAlgarismo(algarismo, daBase, paraBase);
        }
        catch (NumberFormatException e) {
            resultado = e.getMessage();
        }
        catch (Exception e) {
            resultado = e.getMessage();
        }
        return resultado;
    }
    
    private void manterDados(HttpServletRequest request)
            throws ServletException, IOException {
        request.setAttribute("algarismo", request.getParameter("algarismo"));
        request.setAttribute("dabase", request.getParameter("dabase"));
        request.setAttribute("parabase", request.getParameter("parabase"));
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String resultado = getResultado(request.getParameter("algarismo"), request.getParameter("dabase"), request.getParameter("parabase"));
        request.setAttribute("resultado", resultado);
        manterDados(request);
        request.getRequestDispatcher("cb.jsp").forward(request, response);
    }
}
