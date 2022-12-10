//
//  SelectCategoryView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import SwiftUI

struct SelectCategoryView: View {
    @ObservedObject var category = SelectedCategoryViewModel()
//    @State var iphoneIsOn = true
//    @State var tvIsOn = false
//    @State var heartIsOn = false
//    @State var booksIsOn = false
//    @State var appleWatchIsOn = false


    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: -10) {
                ForEach(category.categories, id:  \.id) { symbol in
                    Button(action: category.selectedCategory)  {
                        VStack(spacing: 7) {
                            Text(Image(systemName:symbol.symbolName))
                                .frame(width: 71, height: 71)
                                .foregroundColor(symbol.isOn ?  .white : .gray)
                                .background(symbol.isOn ? colorOrange : .white)
                                .font(.largeTitle)
                                .cornerRadius(34)

                            Text(symbol.categoryName)
                                .font(Font.custom("MarkProBold", size: 12))
                                .foregroundColor(symbol.isOn ? colorOrange : .black)
                        }
                    }
                }
                .padding()
            }

        }
        .background(colorBackGround)
        .onAppear()
    }
}

struct SelectCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCategoryView()
    }
}


