//
//  RadioButton1.swift
//  Planner
//
//  Created by binee on 2023/03/12.
//

import Foundation
import SwiftUI

struct RadioButton1: View {
    @State var slabQulifires = true
    var body: some View{
        
        Button(action:{slabQulifires = true}){
            Text("   ")
                .frame(width:30 , height: 30)
                .background(slabQulifires ? Color.black : Color.white)
                .cornerRadius(100)
                .foregroundColor(Color.black)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth: 6)
                    .scaleEffect(0.6)
                )
            Text("Yes")
        }
        
        Button(action:{slabQulifires = false}){
            Text("   ")
                .frame(width:30 , height: 30)
                .background(slabQulifires ? Color.white : Color.black)
                .cornerRadius(100)
                .foregroundColor(Color.black)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth: 6)
                    .scaleEffect(0.6)
                )
            Text("No")
        }
    }
}
