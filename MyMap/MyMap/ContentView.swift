//
//  ContentView.swift
//  MyMap
//
//  Created by 安原知廣 on 2023/07/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //マップ表示
            MapView(searchkey: "Tachikawa")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
