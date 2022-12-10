//
//  HomeScreenView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import SwiftUI

struct HomeScreenView: View {


    var body: some View {
        ZStack{
            VStack{
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
            }

        }
        .background(colorBackGround)
        .ignoresSafeArea()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
