//
//  addViewController.swift
//  July31_app01
//
//  Created by BYUNAM on 7/31/21.
//

import UIKit

class addViewController: UIViewController {

    @IBOutlet weak var tfHuman: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAppendHuman(_ sender: UIButton) {
        list.append(tfHuman.text!)
        navigationController?.popViewController(animated: true)
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
