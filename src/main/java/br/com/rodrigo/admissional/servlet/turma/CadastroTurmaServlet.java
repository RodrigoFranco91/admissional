/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.servlet.turma;

import br.com.rodrigo.admissional.model.Professor;
import br.com.rodrigo.admissional.model.Turma;
import br.com.rodrigo.admissional.repository.ProfessorRepository;
import br.com.rodrigo.admissional.repository.TurmaRepository;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CadastroTurmaServlet extends HttpServlet {

    @Inject
    private TurmaRepository tr;

    @Inject
    private ProfessorRepository pr;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Turma turma = new Turma();
        Date dataAberturaFormatada = null;
        Date dataEncerramentoFormatada = null;
        turma.setCodigo(request.getParameter("codigo"));
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy", new Locale("pt", "BR"));
        try {
            dataAberturaFormatada = formato.parse(request.getParameter("dataAbertura"));
            dataEncerramentoFormatada = formato.parse(request.getParameter("dataEncerramento"));
        } catch (ParseException ex) {
            Logger.getLogger(CadastroTurmaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        turma.setDataAbertura(dataAberturaFormatada);
        turma.setDataEncerramento(dataEncerramentoFormatada);
        turma.setSala(request.getParameter("sala"));
        Professor professor = pr.find(Long.parseLong(request.getParameter("professorId")));
        turma.setProfessor(professor);

        tr.create(turma);

        RequestDispatcher rd = request.getRequestDispatcher("ListaTurmaServlet");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
