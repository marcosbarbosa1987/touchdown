//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            
            // NavBar
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top Part
            
            TopPartDetailView()
                .padding(.horizontal, 15)
                .zIndex(1)
            
            // Detail Bottom Part
            
            VStack(alignment: .center, spacing: 0, content: {
                
                // Ratings + Sizes
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 20)
                
                // Description
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? "")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: ScrollView
                
                // Quantity + Favourite
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to Cart
                
                AddToCardDetailView()
                    .padding(.bottom, 20)
            })//: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? 0.0, green: shop.selectedProduct?.green ?? 0.0, blue: shop.selectedProduct?.blue ?? 0.0)
                .ignoresSafeArea(.all, edges: .all)
            )
    }
}

// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
