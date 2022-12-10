//
//  SelectCategoryViewModel.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import Foundation

class SelectedCategoryViewModel: ObservableObject {
    var categories = [
        SelectedCategory(symbolName: "iphone", categoryName: "Phones", isOn: true),
        SelectedCategory(symbolName: "tv", categoryName: "Computer", isOn: false),
        SelectedCategory(symbolName: "bolt.heart", categoryName: "Health", isOn: false),
        SelectedCategory(symbolName: "books.vertical.fill", categoryName: "Books", isOn: false),
        SelectedCategory(symbolName: "applewatch.watchface", categoryName: "Other", isOn: false)
    ]


    func selectedCategory() {
        print("ba")
    }
}
struct SelectedCategory {
    let id = UUID()
    let symbolName: String
    let categoryName: String
    var isOn: Bool

}


enum isTupped: String {
    case iphone = "iphone"
    case tv = "tv"
    case heart = "bolt.heart"
    case books = "books.vertical.fill"
    case appleWatch = "applewatch.watchface"
}
