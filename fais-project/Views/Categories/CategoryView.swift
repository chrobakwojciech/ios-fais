//
//  CategoryRow.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct CategoryView: View {
    @State private var isBasketOpen: Bool = false
    
    var categoryProducts: [Product]
    var category: Category

    init(category: Category) {
        self.category = category
        self.categoryProducts = products.filter({$0.categoryId == category.id
        })
    }
    
    var body: some View {
        ProductListView(products: categoryProducts).navigationBarTitle(category.name)
        
            .toolbar() {
                Button("Basket") {
                    isBasketOpen = true
                }
                .sheet(isPresented: $isBasketOpen) {
                    BasketView(isOpen: $isBasketOpen)
                }
            }
            
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: categories[0])
    }
}
