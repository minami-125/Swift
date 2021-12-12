//
//  ViewController.swift
//  Jun27_app02
//
//  Created by TJTJ on 2021/06/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfKor: UITextField!
    @IBOutlet weak var tfMath: UITextField!
    @IBOutlet weak var tfEng: UITextField!
    @IBOutlet weak var lblText: UILabel!
    
    var avg: Double = 0
    var grade: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let kor = tfKor.text else { return }
        guard let math = tfMath.text else { return }
        guard let eng = tfEng.text else { return }
        
        //숫자 입력 체크
        if kor.isEmpty || math.isEmpty || eng.isEmpty{
            lblText.text = "숫자를 입력하세요"
        }else{
//            let korNum = Int(kor)
//            let mathNum = Int(math)
//            let engNum = Int(eng)
            
            avg = (Double(kor)! + Double(math)! + Double(eng)!) / 3.0
            
            /*
            switch avg{
            case 90...100:
                grade = "수"
            case 80..<90:
                grade = "우"
            case 70..<80:
                grade = "미"
            case 60..<70:
                grade = "양"
            default:
                grade = "가"
            }*/
            
            grade = avg >= 90 ? "수" :
                    avg >= 80 ? "우" :
                    avg >= 70 ? "미" :
                    avg >= 60 ? "양" : "가"
                
            lblText.text = "평균은 \(String(format: "%.2f", avg))이고 등급은 \(grade)입니다."
            //format은 String만 가능!
        }
 
    }
}

