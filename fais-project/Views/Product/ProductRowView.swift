//
//  CategoryRow.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct ProductRowView: View {
    var product: Product
    
    var body: some View {
        Text(product.name)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProductRowView(product: products[0]).previewLayout(.fixed(width: 300, height: 70))
            
            ProductRowView(product: products[1]).previewLayout(.fixed(width: 300, height: 70))
            
            ProductRowView(product: products[2]).previewLayout(.fixed(width: 300, height: 70))
        }
        
    }
}
