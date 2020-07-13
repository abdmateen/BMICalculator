//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdul Mateen Ahmad Khan on 13/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float,weight: Float){
        let bmiValue = weight/pow(height,2)
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue,advice: "Eat More Pies!", color : #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue,advice: "Fit as a Fidel!", color : #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue,advice: "Eat Less Pies!", color : #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String{
        let BMIValueto1Dec = String(format: "%.1f",bmi?.value ?? 0.0)
        return BMIValueto1Dec
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}
