//
//  ContentView.swift
//  calculator
//
//  Created by Kiumars on 8/22/23.
//

import SwiftUI

enum CalculatorMode{
    case notSet
    case addition
    case subtraction
    case multiplication
}

struct ContentView: View {
  @State  var currentValue = "2"
  @State var currentMode : CalculatorMode = .notSet
    @State var lastButtonWasMode : Bool = false
    @State var savedNum = 0
    @State var currentValueInt = 0
    var body: some View {
        
        ZStack {
            Color(.black)
            VStack {
                TotalText(value: currentValue)
                HStack {
                    CalculatorButton(action: didPressNumber)
                    CalculatorButton(buttonText: "2",action: didPressNumber)
                    CalculatorButton(buttonText: "3",action: didPressNumber)
                    CalculatorButton(buttonText: "+",buttonColor: .orange,action: didPressMode,mode: .addition)
                }
            
                HStack {
                    CalculatorButton(buttonText: "4",action: didPressNumber)
                    CalculatorButton(buttonText: "5",action: didPressNumber)
                    CalculatorButton(buttonText: "6",action: didPressNumber)
                    CalculatorButton(buttonText: "-",buttonColor: .orange,action: didPressMode,mode: .subtraction)
                }
                HStack {
                    CalculatorButton(buttonText: "7",action: didPressNumber)
                    CalculatorButton(buttonText: "8",action: didPressNumber)
                    CalculatorButton(buttonText: "9",action: didPressNumber)
                    CalculatorButton(buttonText: "x",buttonColor: .orange,action: didPressMode,mode: .multiplication)
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
        if lastButtonWasMode{
            lastButtonWasMode=false
            currentValueInt = 0
            
        }
        //using if statement in case we cannot parse an int value

        if let parsedValue = Int("\(currentValueInt)"  + button.buttonText){
            currentValueInt = parsedValue
            updateText()
        }
        else {
            currentValue="Error!"
            currentValueInt = 0
        }
        
        
    }
    func didPressMode(button : CalculatorButton){
        currentMode = button.mode
        lastButtonWasMode = true
        
    }
    func didPressClear(button : CalculatorButton){
        currentValue = "0"
        
    }
    func didPressEquals(button : CalculatorButton){
        if currentMode == .notSet || lastButtonWasMode{
            return
        }
        switch currentMode {
        case .addition:
            savedNum += currentValueInt
        case .subtraction:
            savedNum -= currentValueInt
        case .multiplication:
            savedNum *= currentValueInt
        case .notSet:
            return
        }
        currentValueInt = savedNum
        updateText()
        lastButtonWasMode=true
        
    }
    func updateText(){
        if currentMode == .notSet{
            savedNum = currentValueInt
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let num = NSNumber(value: currentValueInt)
        currentValue = numberFormatter.string(from: num) ?? "Error!"
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
