//
//  PersonalController.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/17.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit
let PersonlInfoArr = ["个人信息", "设置", "记录"]
var profileSections = [
    Section(name: "Personal Info",
            items: ["info"]),
    Section(name: "AppSetting",
            items: ["Setting"]),
    Section(name: "Record",
            items: ["Record1",
                    "Record2",
                    "Record3",
                    "Record4"])
    ]

class PersonalController: BaseViewController {

    @IBOutlet weak var personalTabView: PersonalTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        personalTabView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - kTopHeight)
        personalTabView.callBack { (_) in
        let emptypVC = EmptyViewController()
        emptypVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(emptypVC, animated: true)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.emptyView?.isHidden = true
        self.navigationItem.title = "个人信息"
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .never
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
