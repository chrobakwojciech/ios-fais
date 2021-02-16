//
//  CategoryRow.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct CategoryRowView: View {
    var category: Category
    
    var body: some View {
        Text(category.name)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryRowView(category: categories[0]).previewLayout(.fixed(width: 300, height: 70))
            
            CategoryRowView(category: categories[1]).previewLayout(.fixed(width: 300, height: 70))
            
            CategoryRowView(category: categories[2]).previewLayout(.fixed(width: 300, height: 70))
        }
        
    }
}
