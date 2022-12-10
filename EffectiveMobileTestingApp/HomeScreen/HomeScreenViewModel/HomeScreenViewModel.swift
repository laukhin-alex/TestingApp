//
//  HomeScreenViewModel.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 08.12.22.
//

import Foundation
import NetworkLayer

class HomeScreenViewModel: ObservableObject {
    @Published var homeStore: [HomeStore] = []
    @Published var bestSeller: [BestSeller] = []
    var canLoadHomeStore = true
    var canLoadBestSeller = true

    func fetchHomeStore() {
        canLoadHomeStore = false
        HomeScreenAPI.getHomeScreen() { [weak self] data, error in
            if error == nil {
                self?.homeStore.append(contentsOf: data?.homeStore ?? [])
                print(data?.homeStore as Any)
            } else {
                print("Error")
            }
        }
    }

    func fetchBestSeller() {
        canLoadBestSeller = false
        HomeScreenAPI.getHomeScreen() { [weak self] data, error in
            if error == nil {
                self?.bestSeller.append(contentsOf: data?.bestSeller ?? [])
                print(data?.bestSeller as Any)
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
