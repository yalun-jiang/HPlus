//
//  FriendViewController.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/6/9.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    @IBOutlet weak var btn_share: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn_share(_ sender: Any) {
        

        let controller = UIAlertController(title: "個人邀請碼", message: "D1314520", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確定", style: .default) { (_) in
           //print("提醒")
        }
        controller.addAction(okAction)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        present(controller, animated: true, completion: nil)
        
    }
    
    

}
