//
//  BasketView.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 22/02/2021.
//

import SwiftUI


struct BasketView: View {
    @Binding var isOpen: Bool
    @EnvironmentObject var basket: Basket
    

    var body: some View {
        Text("Basket")
        List() {
            ForEach(basket.basketProducts, id: \.self) { product in
                ProductRowView(product: product)
            }
            .onDelete(perform: removeRows)
        }

        Button("CLOSE") {
            isOpen = false
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        basket.basketProducts.remove(atOffsets: offsets)
    }
}

