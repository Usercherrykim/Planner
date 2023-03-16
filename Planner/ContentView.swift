//
//  ContentView.swift
//  Planner
//
//  Created by binee on 2023/03/04.
//

import Foundation
import SwiftUI
import UIKit

struct ContentView: View {
    let month: [String] = ["전월", "당월"]
    @State var selectedmonth: String?

    @State var selection : String = ""
    @State var name = 1100000
    @State var name2 = 999999

    
    var body: some View {
        NavigationView(){
            VStack {
                Spacer().frame(height : 20)
                VStack{
                    HStack {
                        Text("당월 사용금액")
                            .font(.system(size:25).bold())
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 25, leading: 20, bottom: 0, trailing: 0))
                            
                    }
                    HStack{
                        ForEach(month, id: \.description) { month in
                            Spacer().frame(maxWidth: 35)
                            CustomRadioButton(
                                id: month,
                                label: month,
                                isMarked: $selection.wrappedValue == month ? true : false,
                                callback: { selected in
                                    self.selection = selected
                                }
                            )
                            Spacer().frame(maxWidth: 30)
                        }
                    }
                    Text("100,000원")
                    .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 40))
                    Spacer().frame(maxHeight: 35)
   
            }//VStack
            .frame(maxWidth: .infinity)
            .frame(height: 250)
            .background(Color.WH)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .gray.opacity(0.5), radius: 1, x: 1, y: 1)
            .padding()
            
            Spacer().frame(height: 40)
            
            VStack{
                Text ("전월 사용금액 비교")
            }
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity)
            .frame(height: 250)
            .background(Color.WH)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .gray.opacity(0.5), radius: 1, x: 1, y: 1)
            .padding()
            Spacer()
         
        }
        .navigationTitle("가계부-Beta")
        .background(Color.Lgray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
