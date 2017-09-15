/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstmaven.controller;

import com.mycompany.firstmaven.model.Lab3Model;
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
 * @author Leslee
 */
@WebServlet(name = "Lab3Controller", urlPatterns = {"/Lab3Controller"})
public class Lab3Controller extends HttpServlet {
    private static final String ALIAS_PAGE = "/lab3home.jsp";
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
       String calcType = request.getParameter("calcType");
        if (calcType.equals("rectangle")) {
        try{
            String length = request.getParameter("length");
            String width = request.getParameter("width");
            
            Lab3Model model = new Lab3Model();
            Double area = model.getRectangleArea(length, width);
           
            request.setAttribute("resMsg", area);
            RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
            view.forward(request, response);
           
        }catch(Exception ex){
            request.setAttribute("errorMsg", ex.getMessage());
            RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
            view.forward(request, response);
        }
      }else if(calcType.equals("circle")){
          try{
              String radius = request.getParameter("radius");
              Lab3Model cirCal = new Lab3Model();
              Double cirArea = cirCal.getCircleArea(radius);
              request.setAttribute("resMsg1", cirArea);
              RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
              view.forward(request, response);
              
          }catch(Exception ex){
              request.setAttribute("errorMsg", ex.getMessage());
               RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
               view.forward(request, response);
          }
      }else{
          try{
              String sideA = request.getParameter("sideA");
              String sideB = request.getParameter("sideB");
              Lab3Model triCal = new Lab3Model();
              Double triArea = triCal.getTriangle(sideA, sideB);
              request.setAttribute("resMsg2", triArea);
              RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
              view.forward(request, response);
          }catch(Exception ex){
              request.setAttribute("errorMsg", ex.getMessage());
              }
               RequestDispatcher view = request.getRequestDispatcher(ALIAS_PAGE);
               view.forward(request, response);
          
              
      }
        
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
