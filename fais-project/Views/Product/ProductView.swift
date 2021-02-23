//
//  CategoryRow.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct ProductView: View {
    @State private var isBasketOpen: Bool = false
    
    @EnvironmentObject var basket: Basket
    @State private var quantity = 1
    
    var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    var body: some View {
        VStack() {
            Text(self.product.name)
            Text(String(basket.basketProducts.count))
            Spacer()
            Picker("Quantity:", selection: $quantity) {
                ForEach(Array(stride(from: 1, to: 20, by: 1)), id: \.self) { index in
                    Text(String(index))
                }
            }
            Button(action: {
                basket.addProduct(product: product, quantity: quantity)
                isBasketOpen = true
            }, label: {
                Text("Add to basket")
            })
            .sheet(isPresented: $isBasketOpen) {
                BasketView(isOpen: $isBasketOpen)
            }
        }
        
            
    }
}

struct Product_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: products[0])
        
    }
}
