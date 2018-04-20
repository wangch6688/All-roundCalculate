//
//  PersonalHeaderView.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/20.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class PersonalHeaderView: UIView {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var emailAdressLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        self.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: 276)
        namelabel.font = UIFont(name: normalFontIdentifier, size: 20)
        emailAdressLabel.font = UIFont(name: normalFontIdentifier, size: 15)
        
        namelabel.text = "Kevin·KG"
        emailAdressLabel.text = "https://ccwKevin.club"
    }

}
