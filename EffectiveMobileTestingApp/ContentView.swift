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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onAppear {
            viewModel.fetchHomeScreen()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
