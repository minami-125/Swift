//
//  ViewController.swift
//  Jun27_app01
//
//  Created by TJTJ on 2021/06/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tffirstNum: UITextField!
    @IBOutlet weak var tfsecondNum: UITextField!
    @IBOutlet weak var tfsumResult: UITextField!
    @IBOutlet weak var lblnotice: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblnotice.text = ""
    }

    @IBAction func btnSum(_ sender: UIButton) {
/*        num1 = Int(tffirstNum.text!) ?? 0
        num2 = Int(tfsecondNum.text!) ?? 0
        
        let oddNum1 = num1%2
        let oddNum2 = num2%2
        
        if oddNum1 == 0 && oddNum2 == 0{
            tfsumResult.text = String(num1 + num2)
            lblnotice.text = "계산이 완료 되었습니다."
        }else if tffirstNum == nil || tfsecondNum == nil {
            lblnotice.text = "숫자를 입력해주세요."
        }else{
            lblnotice.text = "짝수를 입력해주세요."
        }
 */
        //Optional 문자를 가져와서 Unwrapping하기
        guard let num1 = tffirstNum.text else { return }
        guard let num2 = tfsecondNum.text else { return }
        
        //숫자 필드에 data를 안 넣었을 경우
        if num1.isEmpty || num2.isEmpty{
            lblnotice.text = "숫자를 확인하세요."
        }else{
            let oddNum1 = Int(num1)
            let oddNum2 = Int(num2)
            
            //짝수인지 홀수인지 판단
            if oddNum1! % 2 == 0 && oddNum2! % 2 == 0{
                let numResult = oddNum1! + oddNum2!
                tfsumResult.text = String(numResult)
                lblnotice.text = "계산이 완료 되었습니다"
            }else{
                lblnotice.text = "짝수를 입력하세요"
            }
        }
    }
    
}

