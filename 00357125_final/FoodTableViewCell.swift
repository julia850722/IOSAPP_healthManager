//
//  FoodTableViewCell.swift
//  00357125_final
//
//  Created by user_03 on 2018/1/12.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var headview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
