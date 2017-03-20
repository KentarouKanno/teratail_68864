//
//  CustomCell.swift
//  teratail_68864
//
//  Created by Kentarou on 2017/03/20.
//  Copyright © 2017年 Kentarou. All rights reserved.
//

import UIKit
import MCSwipeTableViewCell

class CustomCell: MCSwipeTableViewCell {
    
    @IBOutlet weak var label: UILabel!

    @IBAction func pushButton(_ sender: UIButton) {
        
        print("pushButton!!")
    }
}
