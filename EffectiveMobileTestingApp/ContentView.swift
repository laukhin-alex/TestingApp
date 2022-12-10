//
//  ContentView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 07.12.22.
//

import SwiftUI
import NetworkLayer

struct ContentView: View {
   @ObservedObject private var viewModel = HomeScreenViewModel()

    var body: some View {
        HomeScreenView()
        .onAppear {
            viewModel.fetchBestSeller()
            viewModel.fetchHomeStore()
        }
        .padding()
        .background(colorBackGround)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
