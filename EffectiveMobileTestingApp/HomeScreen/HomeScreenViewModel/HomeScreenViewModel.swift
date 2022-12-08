//
//  HomeScreenViewModel.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 08.12.22.
//

import Foundation
import NetworkLayer

class HomeScreenViewModel: ObservableObject {
    @Published var bestSeller: [BestSeller] = []
    var canLoad = true

    func fetchHomeScreen() {
        canLoad = false
        HomeScreenAPI.getHomeScreen() { [weak self] data, error in
            if error == nil {
                self?.bestSeller.append(contentsOf: data?.bestSeller ?? [])
                print(data?.bestSeller)
            } else {
                print("Error")
            }
        }
    }
}




extension RandomAccessCollection where Self.Element: Identifiable {
    func isLast<Item: Identifiable>(_ elem: Item) -> Bool {
        guard isEmpty == false else { return false }
        guard let itemIndex = firstIndex(where: { AnyHashable($0.id) == AnyHashable(elem.id) }) else {
            return false
        }
        let distance = self.distance(from: itemIndex, to: endIndex)

        return distance == 1
    }
}
