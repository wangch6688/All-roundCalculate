//
//  CommonTool.swift
//  All-roundCalculate
//
//  Created by chuangchuang wang on 2018/4/17.
//  Copyright © 2018年 chuangchuang wang. All rights reserved.
//

import UIKit

let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
let kNavBarHeight: CGFloat = 44.0

/*代替之前的49*/
let kTabBarHeight: CGFloat = (UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0:49.0)
/*代替之前的64*/
let kTopHeight = kStatusBarHeight + kNavBarHeight
let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

let normalFontIdentifier = "AudiTypeScreenmixswithDFPH-normal"
let boldFontIdentifier = "AudiType-ExtendedBold"

let AudiWhite = UIColor(hexString: "#ffffff")
let AudiBlack = UIColor(hexString: "#000000")
let AudiRed = UIColor(hexString: "#bb0a30") // 187, 10, 48
let AudiWarmSilver = UIColor(hexString: "#b6b1a9") // 182, 177, 169
let AudiDarkDisableColor = UIColor(hexString: "#B2B2B2") // 178, 178, 178
let AudiGreyishBrown = UIColor(hexString: "#535353") // 83, 83, 83
let AudiWarningRed = UIColor(hexString: "#AA0007") // 170, 0, 7
let AudiTextGray = UIColor(hexString: "#a3a3a3") // 163, 163, 163
let AudiTimeTextBlack = UIColor(hexString: "#262626")//38,38,38

// audi gray
let AudiGray3c = UIColor(hexString: "#3C3C3C") // 60, 60, 60
let AudiGray90 = UIColor(hexString: "#1a1a1a") // 26, 26, 26
let AudiGray80 = UIColor(hexString: "#333333") // 51, 51, 51
let AudiGray70 = UIColor(hexString: "#4c4c4c") // 76, 76, 76
let AudiGray60 = UIColor(hexString: "#666666") // 102 102 102
let AudiGray50 = UIColor(hexString: "#808080") // 128, 128, 128
let AudiGray40 = UIColor(hexString: "#999999") // 153, 153, 153
let AudiGray30 = UIColor(hexString: "#b3b3b3") // 179, 179, 179
let AudiGray20 = UIColor(hexString: "#cccccc") // 204, 204, 204
let AudiGray15 = UIColor(hexString: "#d9d9d9") // 217, 217, 217
let AudiGray10 = UIColor(hexString: "#e5e5e5") // 229, 229, 229
let AudiGray05 = UIColor(hexString: "#f2f2f2") // 242, 242, 242
let AudiBgColor = UIColor(hexString: "#EFEFF4") // 239, 239, 244

struct Section {
    var name: String?
    var items: [String?]
    var collapsed: Bool

    init(name: String?, items: [String?]) {
        self.name = name
        self.items = items
        self.collapsed = false
    }
}

func currentViewController() -> BaseViewController? {
    let rootVC = UIApplication.shared.keyWindow?.rootViewController as? MainTabBarController
    if let index = rootVC?.selectedIndex {
        let current = rootVC?.viewControllers?[index].childViewControllers.first as? BaseViewController
        return current
    } else {
        return nil
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
