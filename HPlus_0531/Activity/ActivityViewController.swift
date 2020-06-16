//
//  ActivityViewController.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/6/9.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var lbl_cgange01: UIButton!
    
    @IBOutlet weak var lbl_point: UILabel!
    
    var point:Int = 0
    
    
    //儲存折價券的陣列
    // var ProductList = [(Name: String, IMG: String, Text: String, Point: Int, KCAL: Int)]()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        lbl_point.text = "100"
        
        
        //折價券的內容 使用陣列儲存
        //ProductList.append((Name: "買 200 折 20", IMG: "人物形象1-4",Text: "123", Point: 20, KCAL: 370))


    }
    
    @IBAction func lbl_change01(_ sender: Any) {
        
        
    }
    

}
