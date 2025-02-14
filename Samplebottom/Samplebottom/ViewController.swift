//
//  ViewController.swift
//  Samplebottom
//
//  Created by 安原知廣 on 2023/04/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dogbottom(_ sender: Any) {
        label.text = "ワンワン"
    }
    
    @IBAction func catbottom(_ sender: Any) {
        label.text = "ニャーニャー"
    }
    
    @IBAction func flogbottom(_ sender: Any) {
        label.text = "ゲコゲコ"
    }
    
    
}

