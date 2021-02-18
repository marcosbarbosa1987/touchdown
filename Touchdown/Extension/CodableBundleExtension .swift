//
//  CodableBundleExtension .swift
//  Touchdown
//
//  Created by Marcos Barbosa on 18/02/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // MARK: - Locate the JSON file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locale \(file) in bundle.")
        }
        
        // MARK: - Create a property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locale \(file) in bundle.")
        }
        
        // MARK: - Create a decoder
        
        let decoder = JSONDecoder()
        
        // MARK: - Create a property for the decoded data
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locale \(file) in bundle.")
        }
        
        // MARK: - Return the ready-to-use data
        
        return decodedData
    }
}
