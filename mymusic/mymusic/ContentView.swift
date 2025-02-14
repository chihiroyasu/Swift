//
//  ContentView.swift
//  mymusic
//
//  Created by 安原知廣 on 2023/07/17.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = soundplyer()
    
    var body: some View {
        ZStack {
            
            BackgroundView(imageName: "background")
            
            
            HStack {
                Button {
                    //ボタンタプ時のアクション
                    soundPlayer.cymbalPlay()
                } label: {
                    Image("cymbal")
                }
                
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image("guitar")
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
