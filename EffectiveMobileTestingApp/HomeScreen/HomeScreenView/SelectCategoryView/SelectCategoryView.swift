//
//  SelectCategoryView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import SwiftUI

struct SelectCategoryView: View {

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: -2) {
                ForEach(categories, id:  \.id) {symbol in
                    VStack(spacing: 7) {
                        Text(Image(systemName:symbol.symbolName))
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 71, height: 71)
                            .background(colorOrange)
                            .cornerRadius(35)
                        Text(symbol.categoryName)
                            .font(Font.custom("MarkProBold", size: 12))
                            .foregroundColor(colorOrange)
                    }
                }
                .padding()
            }
            Spacer()
        }

    }
}

struct SelectCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCategoryView()
    }
}


