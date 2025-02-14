//
//  soundplyer.swift
//  mymusic
//
//  Created by 安原知廣 on 2023/07/17.
//

import UIKit
import AVFoundation

class soundplyer: NSObject {
    //シンバル音源の読み込み
    let cybalData = NSDataAsset(name: "cymbalSound")!.data
    //シンバル用プレイヤーの読み込み
    var cymbalPlayer: AVAudioPlayer!
    func cymbalPlay() {
        do {
            //音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cybalData)
            //音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました")
        }
    }
}
