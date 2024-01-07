//
//  ContentView.swift
//  CardDesignSwiftUI
//
//  Created by Mallik Chilakala on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
   
    @State private var creditCardInfo = CreditCardInfo()
    @State private var flip: Bool = false
    @State private var degrees: Double = 0
    
    var body: some View {
        VStack {
            
            VStack {
                if !flip {
                    CardFrontView(creditCardInfo: creditCardInfo)
                    
                } else {
                    CardBackView(creditCardInfo: creditCardInfo)
                }
            }.rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            
            CheckoutFormView(creditCardInfo: $creditCardInfo, onCCVTapped: {
                withAnimation {
                    degrees += 180
                    flip.toggle()
                }
            })
            Spacer()
        } .navigationTitle("Checkout")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}
