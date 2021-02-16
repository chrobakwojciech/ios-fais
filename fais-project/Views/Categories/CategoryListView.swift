//
//  CategoryList.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct CategoryListView: View {
    var body: some View {
        List(categories) { category in
            CategoryRowView(category: category)
        }
        
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
