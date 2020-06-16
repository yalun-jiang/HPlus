//
//  TimeViewController.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/6/7.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {

    @IBOutlet weak var btn_save: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func btn_save(_ sender: Any) {
        let controller = UIAlertController(title: "儲存成功！", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    

}
