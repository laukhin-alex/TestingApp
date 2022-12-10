//
//  SelectCategoryViewModel.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import Foundation

class SelectedCategoryViewModel {

}
struct SelectedCategory {
    let id = UUID()
    let symbolName: String
    let categoryName: String

    enum isTupped: String {
        case iphone = "iphone"
        case tv = "tv"
        case heart = "bolt.heart"
        case books = "books.vertical.fill"
        case appleWatch = "applewatch.watchface"
    }
    
}

let categories = [
    SelectedCategory(symbolName: "iphone", categoryName: "Phones"),
    SelectedCategory(symbolName: "tv", categoryName: "Computer"),
    SelectedCategory(symbolName: "bolt.heart", categoryName: "Health"),
    SelectedCategory(symbolName: "books.vertical.fill", categoryName: "Books"),
    SelectedCategory(symbolName: "applewatch.watchface", categoryName: "Other")
]


