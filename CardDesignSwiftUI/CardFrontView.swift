//
//  CardFrontView.swift
//  CardDesignSwiftUI
//
//  Created by Mallik Chilakala on 07/01/2024.
//

import SwiftUI

struct CardFrontView: View {
    
    let creditCardInfo: CreditCardInfo
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "checkmark.circle.fill")
                    .padding()
                Spacer()
                Text("VISA")
                    .font(.system(size: 18, weight: .bold, design: .monospaced))
                    .italic()
                    .padding()
            }
            
            Text(creditCardInfo.cardNumber.isEmpty ? " ": creditCardInfo.cardNumber)
                .font(.system(size: 26, weight: .bold, design: .rounded))
                .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("CARD HOLDER")
                        .opacity(0.5)
                        .font(.system(size: 14))
                    Text(creditCardInfo.cardHolderName.isEmpty ? " ": creditCardInfo.cardHolderName)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("EXPIRES")
                        .opacity(0.5)
                        .font(.system(size: 14))
                    Text(creditCardInfo.expirationDate.isEmpty ? " ": creditCardInfo.expirationDate)
                }
                
            }.padding()
            
            Spacer()
        }
        .foregroundStyle(.white)
        .frame(width: 350, height: 250)
        .background {
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}
