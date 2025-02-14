//
//  ContentView.swift
//  myjanken
//
//  Created by 安原知廣 on 2023/07/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //グー画像を指定
                Image("gu")
                //リサイズを指定
                    .resizable()
                //アスペクト比を維持する指定
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                //グー画像を指定
                Image("choki")
                //リサイズを指定
                    .resizable()
                //アスペクト比を維持する指定
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                //グー画像を指定
                Image("pa")
                //リサイズを指定
                    .resizable()
                //アスペクト比を維持する指定
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            
            
            //じゃんけんするボタン
            Button {
                //新しいじゃんけんの結果を一時的に格納する変数作成
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    //前回と同じ結果のときは再度ランダムに数値を出す
                    //異なる結果のときはrepeatを抜ける
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            } label: {
                //buttonに表示する文字を指定
                Text("じゃんけんをする!")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
