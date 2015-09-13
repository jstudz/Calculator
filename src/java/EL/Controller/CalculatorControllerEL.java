/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EL.Controller;

import EL.Model.AreaCalculator;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arthas
 */
@WebServlet(name = "CalculatorControllerEL", urlPatterns = {"/calculateEL"})
public class CalculatorControllerEL extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        AreaCalculator calc = new AreaCalculator();

       if (action.equals("rectangle")) {
            String length = request.getParameter("length");
            String width = request.getParameter("width");
        
            double rectangleArea = calc.calculateRectangle(length, width);
            request.setAttribute("rectangleArea", rectangleArea);
            
        } else if (action.equals("circle")) {
            String radius = request.getParameter("radius");
            
            double circleArea = calc.calculateCircle(radius);
            request.setAttribute("circleArea", circleArea);
            
        } else if (action.equals("triangle")) {
            String height = request.getParameter("height");
            String base = request.getParameter("base");
            
            double triangleArea = calc.calculateTriangle(height, base);
            request.setAttribute("triangleArea", triangleArea);
        }

        RequestDispatcher view
                = request.getRequestDispatcher("areaCalculatorEL.jsp");
        view.forward(request, response);
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
