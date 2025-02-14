//
//  BackgroundView.swift
//  mymusic
//
//  Created by 安原知廣 on 2023/07/17.
//

import SwiftUI

struct BackgroundView: View {
    //画像ファイル名
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}
