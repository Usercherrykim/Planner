//
//  CurrentView.swift
//  Planner
//
//  Created by binee on 2023/03/13.
//

import Foundation
import SwiftUI
struct CurrentView: View {
    @Binding var number: String
    var body: some View {
        Text("\(number)")
            .font(.system(size: 40))
    }
}
