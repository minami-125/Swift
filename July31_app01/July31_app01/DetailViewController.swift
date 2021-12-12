//
//  DetailViewController.swift
//  July31_app01
//
//  Created by BYUNAM on 7/31/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblHuman: UILabel!
    
    var receiveItem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblHuman.text = receiveItem
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
