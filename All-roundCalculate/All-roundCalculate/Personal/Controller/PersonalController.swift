//
//  PersonalController.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/17.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit
let PersonlInfoArr = ["个人信息", "设置", "记录"]
let PersonaInfoDic = {[]}

class PersonalController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = "个人信息"
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .automatic
        } 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
