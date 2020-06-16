//
//  FeatureViewCellTableViewCell.swift
//  HPlus_0531
//
//  Created by KAREN_JIANG on 2020/6/6.
//  Copyright © 2020 KAREN_JIANG. All rights reserved.
//

import UIKit

class FeatureViewCell: UITableViewCell {

    static let identifier : String = "FeatureViewCell"
    
    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateContent( title : String) -> Void {
        lbTitle.text = title
    }

}
