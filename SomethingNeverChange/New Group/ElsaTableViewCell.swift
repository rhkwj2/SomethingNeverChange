//
//  ElsaTableViewCell.swift
//  SomethingNeverChange
//
//  Created by Kim Yeon Jeong on 2020/2/4.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ElsaTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var elsaTextView: UITextView!
    @IBOutlet weak var containerView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
