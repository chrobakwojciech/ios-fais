//
//  CategoryList.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct ProductListView: View {
    var _products: [Product]
    
    var body: some View {
        List(_products) { product in
            ProductRowView(product: product)
        }
        
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(_products: products)
    }
}
