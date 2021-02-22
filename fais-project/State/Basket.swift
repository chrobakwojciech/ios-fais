//
//  Basket.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 22/02/2021.
//

import Foundation

class Basket: ObservableObject {
    @Published var basketProducts = [Product]()
    
    func addProduct(product: Product, quantity: Int) {
        basketProducts.append(contentsOf: repeatElement(product, count: quantity))
    }
}
