//
//  HomeView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 17/02/21.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }//: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}