/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.firstmaven.model;

/**
 *
 * @author Leslee
 */
public class Lab1Model {
    private double length;
    private double width;
    private double area;
    
    public final double getArea(String width, String length){ 
         area = Double.parseDouble(length) * Double.parseDouble(width);
         return area;
    }
    
}
