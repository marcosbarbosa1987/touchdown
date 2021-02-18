//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
