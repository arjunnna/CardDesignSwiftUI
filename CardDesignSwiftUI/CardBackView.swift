//
//  CardBackView.swift
//  CardDesignSwiftUI
//
//  Created by Mallik Chilakala on 07/01/2024.
//

import SwiftUI

struct CardBackView: View {
    
    let creditCardInfo: CreditCardInfo
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.black)
                .frame(maxWidth: .infinity, maxHeight: 22)
                .padding([.top], 20)
            
            Spacer()
            
            HStack {
                
                Text(" \(creditCardInfo.ccvCode)")
                    .frame(width: 100, height: 33, alignment: .leading)
                    .background(.white)
                    .foregroundStyle(.black)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    ).padding([.leading, .trailing, .bottom], 20)
                
               
                Spacer()
            }
                
                
        }
        .foregroundStyle(.white)
        .frame(width: 350, height: 250)
        .background {
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}
