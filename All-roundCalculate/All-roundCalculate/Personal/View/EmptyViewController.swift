//
//  EmptyViewController.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/23.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class EmptyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = "TBD"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
