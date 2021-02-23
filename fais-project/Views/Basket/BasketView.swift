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
        Text("ASF")
        Button("CLOSE") {
            isOpen = false
        }
    }
}

