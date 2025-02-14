//
//  tatiko3D.swift
//  3dtatiko
//
//  Created by 安原知廣 on 2023/05/06.
//

import UIKit
import SceneKit

class tatiko3D: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        
        let modelScene = SCNScene(named: "tatiko")!
        let modelNode = modelScene.rootNode.childNodes.first!
        
        modelNode.position = SCNVector3(0,0,-10)
        scene.rootNode.addChildNode(modelNode)
        
        let scnView = SCNView(frame: view.bounds)
        scnView.scene = scene
        scnView.allowsCameraControl = true
        view.addSubview(scnView)
    

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
