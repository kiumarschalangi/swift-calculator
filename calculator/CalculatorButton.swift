//
//  CalculatorButton.swift
//  calculator
//
//  Created by Kiumars on 8/22/23.
//

import SwiftUI

struct CalculatorButton: View {
    var buttonText : String = "1"
    var buttonColor : Color = Color(hue: 1.0, saturation: 0.0, brightness: 0.237)
    var width : CGFloat = 70
    
    var body: some View {
        Button {
            onButtonPressed()
            
        } label: {
            Text(buttonText)
                .font(.largeTitle)
                .frame(width: width, height: 70, alignment: .center)
                .background(buttonColor)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 35))
            
        }
        
    }
    
    func onButtonPressed (){
        print("button pressed!")
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton()
    }
}
