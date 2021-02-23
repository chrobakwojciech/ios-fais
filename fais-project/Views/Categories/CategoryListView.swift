//
//  CategoryList.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

struct CategoryListView: View {
    @EnvironmentObject var basket: Basket
    @State private var isBasketOpen: Bool = false
    
    
    var body: some View {
        NavigationView {
            List(categories) { category in
                NavigationLink(destination: CategoryView(category: category)) {
                    CategoryRowView(category: category)
                }
                
            }
            .navigationTitle("Categories")
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
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
