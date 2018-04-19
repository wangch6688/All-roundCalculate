//
//  PersonalTableView.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/19.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class PersonalTableView: UITableView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        defaultSetting()
    }
    
    func defaultSetting() {
        self.delegate = self
        self.dataSource = self
    }
}

extension PersonalTableView : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Personl"
    }
}

extension PersonalTableView : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
        
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 0.001
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}
