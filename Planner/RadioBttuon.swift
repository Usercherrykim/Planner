//
//  RadioButton.swift
//  Planner
//
//  Created by binee on 2023/03/06.
//

import SwiftUI

struct RadioBttuon: View {
    let window = UIScreen.main.bounds.size
    let id:Int
    let title:String
    let callback: (Int)->()
    let selectedId:Int
    init(
        title:String,
        id: Int,
        callback: @escaping (Int)->(),
        selectedID: Int
    ) {
        self.title = title
        self.id = id
        self.selectedId = selectedID
        self.callback = callback
    }
    
    var body: some View {
        
        Button {
         
            self.callback(id)
            
            
        } label: {
            
            Text(title).fontWeight(.bold).tracking(4) //자간 간격 4 만큼
            
            
            //글자 색
                .foregroundColor(self.selectedId != self.id ? Color("UnSelectedTextColor"):.white)
            
            //배경색
                .background(self.selectedId != self.id ? Color("UnSelectedRbtnColor")  : Color("PrimaryColor"))
                .cornerRadius(10)
            //테두리 설정
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("PrimaryColor"),lineWidth: 1))
        }.frame(width: window.width*0.15, height: window.height*0.02, alignment: .center)
            //최종 크기
        
        
        
    }
}
