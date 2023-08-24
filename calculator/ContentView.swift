//
//  ContentView.swift
//  calculator
//
//  Created by Kiumars on 8/22/23.
//

import SwiftUI

struct ContentView: View {
  @State  var currentValue = "2"
    var body: some View {
        
        ZStack {
            Color(.black)
            VStack {
                TotalText(value: currentValue)
                HStack {
                    CalculatorButton(action: didPressNumber)
                    CalculatorButton(buttonText: "2",action: didPressNumber)
                    CalculatorButton(buttonText: "3",action: didPressNumber)
                    CalculatorButton(buttonText: "+",buttonColor: .orange,action: didPressMode)
                }
            
                HStack {
                    CalculatorButton(buttonText: "4",action: didPressNumber)
                    CalculatorButton(buttonText: "5",action: didPressNumber)
                    CalculatorButton(buttonText: "6",action: didPressNumber)
                    CalculatorButton(buttonText: "-",buttonColor: .orange,action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "7",action: didPressNumber)
                    CalculatorButton(buttonText: "8",action: didPressNumber)
                    CalculatorButton(buttonText: "9",action: didPressNumber)
                    CalculatorButton(buttonText: "x",buttonColor: .orange,action: didPressMode)
                }
                HStack {
                    
                    CalculatorButton(buttonText: "0",width: 140,action: didPressNumber)
                    CalculatorButton(buttonText: "c",buttonColor: .gray,action: didPressClear)
                    CalculatorButton(buttonText: "=",buttonColor: .orange,action: didPressEquals)
                }
            }
           
         
        }.ignoresSafeArea()
    }
    func didPressNumber (button: CalculatorButton){
        //using if statement in case we cannot parse an int value
        if let parsedValue = Int(currentValue + button.buttonText){
            currentValue = "\(parsedValue)"
        }
        else {
            currentValue="Error!"
        }
        
        
    }
    func didPressMode(button : CalculatorButton){
        
    }
    func didPressClear(button : CalculatorButton){
        currentValue = "0"
        
    }
    func didPressEquals(button : CalculatorButton){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
