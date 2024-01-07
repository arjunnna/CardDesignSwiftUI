//
//  CheckoutFormView.swift
//  CardDesignSwiftUI
//
//  Created by Mallik Chilakala on 07/01/2024.
//

import SwiftUI

struct CheckoutFormView: View {
    
    @Binding var creditCardInfo: CreditCardInfo
    let onCCVTapped: () -> Void
    @FocusState private var isCCVFocused: Bool
    
    var body: some View {
        Form {
            TextField("Cardholder's Name", text: $creditCardInfo.cardHolderName)
            TextField("Card Number", text: $creditCardInfo.cardNumber)
            TextField("Expiry Date", text: $creditCardInfo.expirationDate)
            TextField("CCV", text: $creditCardInfo.ccvCode)
                .focused($isCCVFocused)
        }.onChange(of: isCCVFocused) { newValue in
            onCCVTapped()
        }
    }
}
