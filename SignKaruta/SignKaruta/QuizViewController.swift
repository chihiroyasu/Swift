//
//  QuizViewController.swift
//  SignKaruta
//
//  Created by 安原知廣 on 2023/05/02.
//

import UIKit

class QuizViewController: UIViewController {
    
    var csvArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        csvArray = loadCSV(fileNme: "quiz")
        print(csvArray)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnaction(sender: UIButton){
        print(sender.tag)
    }
    
    func loadCSV(fileNme: String) -> String {
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle, encoding: String.Encoding.utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArray = lineChange.components(separatedBy: "\n")
            csvArray.removeLast()
        } catch {
            print("エラー")
        }
        return csvArray
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
