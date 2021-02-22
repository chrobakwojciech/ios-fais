//
//  CategoryList.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct ProductListView: View {
    var products: [Product]

    
    var body: some View {
        List(products) { product in
            NavigationLink(destination: ProductView(product: product)) {
                ProductRowView(product: product)
            }
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(products: products)
    }
}
