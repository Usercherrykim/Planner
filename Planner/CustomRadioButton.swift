//
//  CustomRadioButton.swift
//  Planner
//
//  Created by binee on 2023/03/12.
//

import Foundation
import SwiftUI

struct CustomRadioButton: View {
    let id : String
    let label : String
    let size : CGFloat
    let dotColor : Color
    let bgColor : Color
    let notSelectedColor : Color
    let textFont : Font
    let isMarked : Bool
    let callback: (String) -> ()

    init(id: String, label: String, size: CGFloat = 25, dotColor: Color = .white, bgColor: Color = .black, notSelectedColor: Color = .gray, textFont: Font = .system(size: 15), isMarked: Bool = false, callback: @escaping (String) -> ()) {
        self.id = id
        self.label = label
        self.size = size
        self.dotColor = dotColor
        self.bgColor = bgColor
        self.notSelectedColor = notSelectedColor
        self.textFont = textFont
        self.isMarked = isMarked
        self.callback = callback
    }
    
    var body: some View{
        Button() {
            self.callback(self.id)
            
        } label: {
            if self.isMarked {
                VStack{
                    HStack{
                        ZStack{
                            Circle()
                                .fill(bgColor)
                                .frame(width: size, height: size)
                            Circle()
                                .fill(dotColor)
                                .frame(width: size/3, height: size/3)
                        }
                        .frame(width: 10, height:5)
                        Color.clear.frame(width: 5)
                        Text(label)
                            .font(textFont)
                            .foregroundColor(bgColor)
                    }
                }
            }else {
                HStack(){
                    ZStack{
                        Circle()
                            .fill(dotColor)
                            .frame(width: size, height: size)
                            .overlay(Circle().stroke(notSelectedColor,lineWidth: 1))
                    }
                    .frame(width: 10, height: 5)
                    Color.clear.frame(width: 5)
                    Text(label)
                        .font(textFont)
                        .foregroundColor(bgColor)
                }
            }
        }.accessibility(identifier : id)
    }
}
