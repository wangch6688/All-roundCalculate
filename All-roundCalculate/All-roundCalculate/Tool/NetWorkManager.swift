//
//  NetWorkManager.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/25.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

import Alamofire

enum NetWorkStatus {
    case unknown
    case notReachable
    case ethernetOrWiFi
    case wwan
}

class NetWorkManager: NSObject {
    
    func getCurrentNetworkStatus() {
        let manager = NetworkReachabilityManager(host: "www.apple.com")
        manager?.listener = { status in
            var networkStatus = NetWorkStatus.unknown
            switch status {
            case .unknown:
                networkStatus = NetWorkStatus.unknown
            case .notReachable:
                networkStatus = NetWorkStatus.notReachable
            case .reachable(.ethernetOrWiFi):
                networkStatus = NetWorkStatus.ethernetOrWiFi
            case .reachable(.wwan):
                networkStatus = NetWorkStatus.wwan
            }
        }
        manager?.startListening()//开始监听网络
    }
    
    func getData() {
        
    }
    
    
}
