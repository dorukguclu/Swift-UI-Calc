//
//  ContentView.swift
//  Swift UI Calc
//
//  Created by Doruk GÜÇLÜ on 15.12.2024.
//
import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Simple Calculator")
                .font(.largeTitle)
                .bold()
            
            TextField("Enter first number", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("Enter second number", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            HStack(spacing: 10) {
                Button(action: addNumbers) {
                    Text("+")
                        .frame(width: 50, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: subtractNumbers) {
                    Text("-")
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: multiplyNumbers) {
                    Text("×")
                        .frame(width: 50, height: 50)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: divideNumbers) {
                    Text("÷")
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: modulusNumbers) {
                    Text("%")
                        .frame(width: 50, height: 50)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            Button(action: clearFields) {
                Text("Clear")
                    .frame(width: 100, height: 50)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Result: \(result)")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .padding()
    }
    
    func addNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 + num2)"
        } else {
            result = "Invalid input"
        }
    }
    
    func subtractNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 - num2)"
        } else {
            result = "Invalid input"
        }
    }
    
    func multiplyNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2) {
            result = "\(num1 * num2)"
        } else {
            result = "Invalid input"
        }
    }
    
    func divideNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2), num2 != 0 {
            result = "\(num1 / num2)"
        } else if let _ = Double(number1), let _ = Double(number2), Double(number2) == 0 {
            result = "Cannot divide by zero"
        } else {
            result = "Invalid input"
        }
    }
    
    func modulusNumbers() {
        if let num1 = Double(number1), let num2 = Double(number2), num2 != 0 {
            result = "\(Int(num1) % Int(num2))"
        } else if let _ = Double(number1), let _ = Double(number2), Double(number2) == 0 {
            result = "Cannot divide by zero"
        } else {
            result = "Invalid input"
        }
    }
    
    func clearFields() {
        number1 = ""
        number2 = ""
        result = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
