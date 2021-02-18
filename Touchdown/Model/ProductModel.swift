//
//  ProductModel.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import Foundation

struct Product: Codable, Identifiable {
    
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}

// MARK: - Computed properties

extension Product {
    var red: Double     { return color[0]}
    var green: Double   { return color[1]}
    var blue: Double    { return color[2]}
    
    var formattedPrice: String { return "$\(price)" }
}
