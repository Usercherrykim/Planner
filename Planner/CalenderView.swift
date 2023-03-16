//
//  CanlenderView.swift
//  Planner
//
//  Created by binee on 2023/03/12.
//

import Foundation
import SwiftUI

struct CalenderView: View {
@State private var date = Date()
    
var body: some View {
    VStack{
        Spacer().frame(height: 40)
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        Spacer()
        Text("결제 내역..")
        Spacer()
    }
}
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
