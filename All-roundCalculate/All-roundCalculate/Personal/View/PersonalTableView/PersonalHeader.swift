//
//  PersonalHeader.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/19.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class PersonalHeader: UIView {

    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        defaultSetting()
    }

    func defaultSetting() {
        titleLabel.font = UIFont(name: normalFontIdentifier, size: 15)
        titleLabel.textColor = AudiGray40
        self.backgroundColor = AudiBgColor
    }
}
