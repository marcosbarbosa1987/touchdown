//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import SwiftUI

struct AddToCardDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: Button
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? 0.0, green: shop.selectedProduct?.green ?? 0.0, blue: shop.selectedProduct?.blue ?? 0.0)
        )
        .clipShape(Capsule())
    }
}

// MARK: - Preview

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
