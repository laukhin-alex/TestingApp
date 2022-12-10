//
//  HomeScreenView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import SwiftUI

struct HomeScreenView: View {
    @State var text = ""

    var body: some View {
        ZStack{
            VStack(alignment: .trailing){
                HStack {
                    Text("Select Category")
                        .font(Font.custom("MarkProBold", size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(colorBlack)

                    Spacer()
                    Text("view all")
                        .font(Font.custom("MarkProBold", size: 20))
                        .foregroundColor(colorOrange)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                SelectCategoryView()
                HStack{
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(colorOrange)
                        Spacer(minLength: 20)
                        TextField("Search",
                                  text: $text)
                        .font(Font.custom("MarkProBold", size: 12))
                    }
                    .frame(height: 34)
                    .padding(.horizontal)
                    .background(Capsule().fill(Color.white))
                    Text(Image(systemName:"qrcode"))
                        .frame(width: 34, height: 34)
                        .foregroundColor(.white)
                        .background(colorOrange)

                        .cornerRadius(17)
                        .padding(.horizontal)
                }
                .padding(.horizontal, 22.0)
                Spacer()
            }

        }
        .background(colorBackGround)

    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
