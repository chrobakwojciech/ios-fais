//
//  CategoryList.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct ProductListView: View {
    var body: some View {
        List(products) { product in
            ProductRowView(product: product)
        }
        
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
