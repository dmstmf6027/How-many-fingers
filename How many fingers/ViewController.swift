//
//  ViewController.swift
//  How many fingers
//
//  Created by D7703_04 on 2018. 3. 26..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate = self
        input.clearButtonMode = UITextFieldViewMode.always
    }
    

    func guess(_ sender: Any) {
        // 랜덤 숫자 생성
       let number = arc4random() % 6
       print(number)
       let numberString = String(number)
        
        if input.text == numberString {
            resultLabel.text = "빙고 !!!"
        } else {
            resultLabel.text = "실패 ! 다시 해보세요 !!! \n숨겨진 숫자는 현재 \(number)입니다 !"
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        input.backgroundColor = UIColor.green
    }
        
}

    

