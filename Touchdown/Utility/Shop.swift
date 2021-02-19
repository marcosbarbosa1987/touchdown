//
//  Shop.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import Foundation

class Shop: ObservableObject {
    
    // MARK: - Properties
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
