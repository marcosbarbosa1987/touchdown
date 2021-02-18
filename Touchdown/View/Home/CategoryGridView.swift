//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true))
                {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }// Loop
            })//: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
        })//: ScrollView
    }
}

// MARK: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
