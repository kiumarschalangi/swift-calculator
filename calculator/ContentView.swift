//
//  ContentView.swift
//  calculator
//
//  Created by Kiumars on 8/22/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color(.black)
            VStack {
                TotalText()
                HStack {
                    CalculatorButton()
                    CalculatorButton(buttonText: "2")
                    CalculatorButton(buttonText: "3")
                    CalculatorButton(buttonText: "+",buttonColor: .orange)
                }
            
                HStack {
                    CalculatorButton(buttonText: "4" )
                    CalculatorButton(buttonText: "5")
                    CalculatorButton(buttonText: "6")
                    CalculatorButton(buttonText: "-",buttonColor: .orange)
                }
                HStack {
                    CalculatorButton(buttonText: "7")
                    CalculatorButton(buttonText: "8")
                    CalculatorButton(buttonText: "9")
                    CalculatorButton(buttonText: "x",buttonColor: .orange)
                }
                HStack {
                    
                    CalculatorButton(buttonText: "0",width: 140)
                    CalculatorButton(buttonText: "c",buttonColor: .gray)
                    CalculatorButton(buttonText: "=",buttonColor: .orange)
                }
            }
           
         
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
