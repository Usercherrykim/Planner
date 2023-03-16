//
//  TabView.swift
//  Planner
//
//  Created by binee on 2023/03/04.
//
import SwiftUI
import UIKit

struct MyTabView : View {
    @State private var selection = 0

    var body: some View{
        
        TabView(selection: $selection){ // 탭뷰를 걸어준다.
            // 보여질 화면
            
            ContentView() // 뷰
                .tabItem { // 뷰에 탭 아이템을 건다!
                    Image(systemName: "house")
                    Text("홈")
                }
                .tag(0) // tag설정
            
            CalenderView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("캘린더")
                }
                .tag(1)
            
            ContentView()
                .tabItem{
                    Image(systemName: "line.3.horizontal")
                    Text("설정")
                }
                .tag(2)
        }
        .onAppear() {
                    UITabBar.appearance().barTintColor = .white
                }
                .accentColor(.black)
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
