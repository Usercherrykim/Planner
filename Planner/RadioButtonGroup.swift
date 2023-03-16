//
//  Test.swift
//  Planner
//
//  Created by binee on 2023/03/06.
//

import SwiftUI
import UIKit

struct RadioButtonGroup: View {
    let window = UIScreen.main.bounds.size
    let items :[String] = ["이번달","지난달"]
    
    @State var selectedId:Int = 0
    
    let callback: ((Int,Int)) -> ()
    
    func radioGroupCallback(id: Int) {
        callback((selectedId,id)) //콜백 (이전 선택,현재 선택) 을 튜블 형태로
        selectedId = id //선택된 아이디 변경
        
    }
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(spacing: 1) { //버튼간 간격
                
                ForEach(Array(items.enumerated()), id: \.offset) { idx, item in
                    RadioBttuon(title: item, id:idx, callback: self.radioGroupCallback, selectedID: self.selectedId) //버튼 설정
                }
            }.frame(width: window.width, height: 30, alignment: .center)
        }
        
    }
    
}
