//
//  PersonalCell.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/20.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class PersonalCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.font = UIFont(name: normalFontIdentifier, size: 15)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
