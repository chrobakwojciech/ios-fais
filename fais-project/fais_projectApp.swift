//
//  fais_projectApp.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import SwiftUI

@main
struct fais_projectApp: App {
    @StateObject var basket = Basket()
    var body: some Scene {
        WindowGroup {
            CategoryListView().environmentObject(basket)
        }
    }
}
