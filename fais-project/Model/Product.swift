//
//  Category.swift
//  fais-project
//
//  Created by Wojciech Chrobak on 16/02/2021.
//

import Foundation

struct Product: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var categoryId: Int
}
