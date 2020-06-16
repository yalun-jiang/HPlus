//
//  RecordViewController.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/6/9.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class RecordViewController: UIViewController {
    
    

    @IBOutlet weak var sportPicker: UIPickerView!
    
    @IBOutlet weak var btn_addwater: UIButton!
    
    @IBOutlet weak var btn_addcals: UIButton!
    
    @IBOutlet weak var lbl_cals: UILabel!
    
    
    @IBOutlet weak var btn_mcals: UIButton!
    @IBOutlet weak var txt_cals: UITextField!
    @IBOutlet weak var text_water: UITextField!
    
    //增加徽章
    @IBOutlet weak var btn_addP: UIButton!
    @IBOutlet weak var img_P1: UIImageView!
    @IBOutlet weak var img_P2: UIImageView!
    @IBOutlet weak var img_P3: UIImageView!
    @IBOutlet weak var img_P4: UIImageView!
    @IBOutlet weak var img_P5: UIImageView!
    
    
   //卡路里數值
    var cals:Int = 0
    
    var water:Int = 0
    
    var sports : [String] = ["-","跑步", "快走", "騎腳踏車", "瑜珈", "跳舞", "排球", "游泳"]
    var timeSections : [String] = ["-","0.5", "1", "1.5", "2"]
    var item : [String] = []
    var spend : [String] = []

    
    //增加勳章
    //var pupu : [String] = ["img_P1", "img_P2", "img_P3", "img_P4", "img_P5"]
    
    var pupu_count:Int = 1
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //補充水按鈕
    @IBAction func btn_water(_ sender: Any) {
       
        if text_water.text != "" {
        
            water += Int(text_water.text!)!
            
            let controller = UIAlertController(title: "補水成功！", message: "今天已補充了\(water) ml，繼續努力！", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            controller.addAction(okAction)
            present(controller, animated: true, completion: nil)
                      
            
        }

        text_water.text=""
    }
    

    //熱量攝取按鈕
    @IBAction func btn_cals(_ sender: Any) {
       
        if txt_cals.text != "" {
            
            //var cals:Int = Int(txt_cals.text!)!
            cals += Int(txt_cals.text!)!
            lbl_cals.text = "\(cals)"
            
            AppDelegate.calcCalorie = cals
            
        }
        
        //這邊 空隔 不是數字 你原本
        txt_cals.text = ""
        
    }
    
    @IBAction func btn_mcals(_ sender: Any) {
    
        
        if item == ["跑步"] {
            //print("ok")
            if spend == ["0.5"]{
                //print("ok2")
                cals = cals-(246*1)
           
            }else if spend == ["1"]{
                
                cals = cals-(246*2)
                
            }else if spend == ["1.5"]{
                
                cals = cals-(246*3)
                
            }else if spend == ["2"]{
                
                cals = cals-(246*4)
                
            }
            lbl_cals.text = "\(cals)"
            
        }else if item == ["快走"] {
      
            if spend == ["0.5"]{

                cals = cals-(165*1)
           
            }else if spend == ["1"]{
                
                cals = cals-(165*2)
                
            }else if spend == ["1.5"]{
                
                cals = cals-(165*3)
                
            }else if spend == ["2"]{
                
                cals = cals-(165*4)
            }
            
            lbl_cals.text = "\(cals)"
        }else if item == ["騎腳踏車"] {
        
              if spend == ["0.5"]{

                  cals = cals-(120*1)
             
              }else if spend == ["1"]{
                  
                  cals = cals-(120*2)
                  
              }else if spend == ["1.5"]{
                  
                  cals = cals-(120*3)
                  
              }else if spend == ["2"]{
                  
                  cals = cals-(120*4)
              }
              
              lbl_cals.text = "\(cals)"
          
        }else if item == ["瑜珈"] {
          
                if spend == ["0.5"]{

                    cals = cals-(90*1)
               
                }else if spend == ["1"]{
                    
                    cals = cals-(90*2)
                    
                }else if spend == ["1.5"]{
                    
                    cals = cals-(90*3)
                    
                }else if spend == ["2"]{
                    
                    cals = cals-(90*4)
                }
                
                lbl_cals.text = "\(cals)"
        }else if item == ["跳舞"] {
            
                if spend == ["0.5"]{

                    cals = cals-(93*1)
                 
                }else if spend == ["1"]{
                      
                    cals = cals-(93*2)
                      
                }else if spend == ["1.5"]{
                      
                    cals = cals-(93*3)
                      
                }else if spend == ["2"]{
                      
                    cals = cals-(93*4)
                }
                  
                lbl_cals.text = "\(cals)"
        
        }else if item == ["排球"] {
            
                if spend == ["0.5"]{

                    cals = cals-(108*1)
                 
                }else if spend == ["1"]{
                      
                    cals = cals-(108*2)
                      
                }else if spend == ["1.5"]{
                      
                    cals = cals-(108*3)
                      
                }else if spend == ["2"]{
                      
                    cals = cals-(108*4)
                }
                  
                lbl_cals.text = "\(cals)"
        
        }else if item == ["游泳"] {
            
                if spend == ["0.5"]{

                    cals = cals-(189*1)
                 
                }else if spend == ["1"]{
                      
                    cals = cals-(189*2)
                      
                }else if spend == ["1.5"]{
                      
                    cals = cals-(189*3)
                      
                }else if spend == ["2"]{
                      
                    cals = cals-(189*4)
                }
                  
                lbl_cals.text = "\(cals)"
        }
        
        
        
        
        
        //cals = cals-420
        //lbl_cals.text = "\(cals)"
    }
    
    
   //增加勳章
    @IBAction func btn_addP(_ sender: Any) {
        updateImage()
        
    }
    
    
    
    
    func updateImage(){
       // print(pupu[pupu_count])
        
       
        
        if pupu_count <= 6{
            switch pupu_count {
            case 1:
                img_P1.image = UIImage(named: "pupu")
                pupu_count = pupu_count+1
            case 2:
                img_P2.image = UIImage(named: "pupu")
                pupu_count = pupu_count+1
            case 3:
                img_P3.image = UIImage(named: "pupu")
                pupu_count = pupu_count+1
            case 4:
                img_P4.image = UIImage(named: "pupu")
                pupu_count = pupu_count+1
            case 5:
                img_P5.image = UIImage(named: "pupu")
                pupu_count = pupu_count+1
            default:
                print("今日已集滿徽章")
                let controller = UIAlertController(title: "今日已集滿徽章囉！", message: "", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            }
            
        }
    }
    
    
}


extension RecordViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        if( 101 == pickerView.tag ){
            return sports.count
        }
        
        if( 102 == pickerView.tag ){
            return timeSections.count
        }
        
        return 0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if( 101 == pickerView.tag ){
            return sports[row]
        }
        
        if( 102 == pickerView.tag ){
            return timeSections[row]
        }
        
        return "N/A"
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("pickerView tag:\(pickerView.tag);component:\(component) ;row:\( row )")
        
        
        if( 101 == pickerView.tag ){
            
            let sport = sports[row]
            print(sport)
            
            item = [sports[row]]
            print(item[0])
            
        }
        
        if( 102 == pickerView.tag ){
            let timeSection = timeSections[row]
            print(timeSection)
            
        
            spend = [timeSections[row]]
            print(spend[0])
        }
        
        
    }
    
}
