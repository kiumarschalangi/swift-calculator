//
//  TotalText.swift
//  calculator
//
//  Created by Kiumars on 8/22/23.
//

import SwiftUI

struct TotalText: View {
    var value : String = "0"
    var body: some View {
        Text(value)
            .font(.system(size:60))
        .padding()
        .foregroundColor(.white)
        .lineLimit(1)
    }
}

struct TotalText_Previews: PreviewProvider {
    static var previews: some View {
        TotalText()
            .background(.orange)
    }
}
