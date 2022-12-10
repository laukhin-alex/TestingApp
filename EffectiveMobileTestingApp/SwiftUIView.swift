//
//  SwiftUIView.swift
//  EffectiveMobileTestingApp
//
//  Created by Александр on 10.12.22.
//

import SwiftUI


struct ColorModel: Identifiable {
    let value: Color
    let id = UUID()
}
let colors = [
    ColorModel(value: Color.orange),
    ColorModel(value: Color.green),
    ColorModel(value: Color.blue),
    ColorModel(value: Color.red),
    ColorModel(value: Color.yellow),
    ColorModel(value: Color.gray),
    ColorModel(value: Color.pink),
]
let totalButtons: Int = 6

struct ColorButton
{
    let color: Color
    let buttonIndex: Int
}

struct SwiftUIView: View {
    func updateSelectedButtons(value: Int)
       {
           if self.buttonList.contains(where: { $0.buttonIndex == value } )
           {
               self.buttonList.remove(at: self.buttonList.firstIndex(where: {$0.buttonIndex == value})!)
           }
           else
           {
               self.buttonList.append(ColorButton(color: colors[self.colorIndex].value, buttonIndex: value))
               self.colorIndex += 1
               if self.colorIndex >= 7
               {
                   self.colorIndex = 0
               }
           }
       }

       func getColor(_ value: Int) -> Color
       {
           return self.buttonList.first(where: { $0.buttonIndex == value })?.color ?? Color.white
       }

       @State private var buttonList = [ColorButton]()

       @State private var selectedButtons: [Int] = [Int]()
       @State private var colorIndex: Int = 0

       init()
       {

       }

       var body: some View {
           VStack
           {
               ForEach(0 ..< totalButtons) { index in
                   Button(action: {
                       self.updateSelectedButtons(value: index)
                   }) {
                       Text("Button \(index)")
                       .padding()
                   }
                   .background(self.getColor(index))
                   .overlay(
                   RoundedRectangle(cornerRadius: 20)
                       .stroke(Color.purple, lineWidth: 5) )
                   .padding()
               }
           }
       }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

