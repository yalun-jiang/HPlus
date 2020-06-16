//
//  ViewController.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/5/31.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let fetures : [String] = ["WebView Load URL", "WebView Load HTML", "WebView Interaction", "SFSafariViewController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let name = self.fetures[ indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FeatureViewCell.identifier ) as! FeatureViewCell
        
        cell.updateContent(title: name)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "moveToURL", sender: self)
            break
        case 1:
            self.performSegue(withIdentifier: "moveToHTML", sender: self)
            break
        case 2:
            self.performSegue(withIdentifier: "moveToInteraction", sender: self)
            break
        case 3:
            break
        default:
            break
        }
    }
}

