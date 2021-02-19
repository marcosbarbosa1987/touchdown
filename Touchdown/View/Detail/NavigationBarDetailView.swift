//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                shop.selectedProduct = nil
                shop.showingProduct = false
                withAnimation(.easeIn) {}
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
        }//: HStack
    }
}

// MARK: - Preview

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
