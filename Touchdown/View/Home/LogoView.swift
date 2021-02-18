//
//  LogoView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 17/02/21.
//

import SwiftUI

struct LogoView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }//: HStack
    }
}

// MARK: - Preview

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
