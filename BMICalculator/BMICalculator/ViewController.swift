//
//  ViewController.swift
//  BMICalculator
//
//  Created by 安原知廣 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heighttextfield: UITextField!
    @IBOutlet weak var latetextfield: UITextField!
    @IBOutlet weak var bmilabel: UILabel!
    
    override func viewDidLoad() {
        heighttextfield.placeholder = "身長をcmに入力してください"
        latetextfield.placeholder = "体重をkgで入力してください"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcbuttonact(_ sender: Any) {
        let doubleH = Double(heighttextfield.text!)
        let doubleW = Double(latetextfield.text!)
        bmilabel.text = calculation(height: doubleH!, weight: doubleW!)
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h*h)
        result = floor(result * 10) / 10
        
        return result.description
    }
    
}

