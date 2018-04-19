//
//  BaseViewController.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/17.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, UIGestureRecognizerDelegate {

    enum CustomBarStyle {
        case `default`
        case light
    }
    
    var barStyle: CustomBarStyle = .default {
        didSet {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    let emptyView = Bundle.main.loadNibNamed("EmptyView", owner: self, options: nil)?.first as? EmptyView
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.2
        self.emptyView?.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight - kTabBarHeight)
        view.addSubview(self.emptyView!)
        self.emptyView?.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        view.backgroundColor = UIColor.white
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if self.barStyle == .default {
            return .default
        } else {
            return .lightContent
        }
    }
    
    func handleNavigationTransition(_ sender: UIPanGestureRecognizer) {
        
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if navigationController?.childViewControllers.count == 1 {
            return false
        } else {
            return true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
