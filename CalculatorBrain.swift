//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joel Personal on 8/5/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5 {
             bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmi < 24.9 {
           bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
             bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
}
