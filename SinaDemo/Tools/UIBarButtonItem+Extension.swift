//
//  UIBarButtonItem+Extension.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(imgName: String? = nil, title: String? = nil, target: Any?, action:Selector?) {
        
        self.init()
        
        let button = UIButton()
        
        if let sel = action {
            button.addTarget(target, action: sel, for: UIControlEvents.touchUpInside)
        }
        
        if let img = imgName {
            button.setImage(UIImage(named: img), for: UIControlState.normal)
            button.setImage(UIImage(named: "\(img)_highlighted"), for: UIControlState.highlighted)
        }
        
        if let t = title {
            button.setTitle(t, for: UIControlState.normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            button.setTitleColor(UIColor.gray, for: UIControlState.normal)
            button.setTitleColor(UIColor.orange, for: UIControlState.highlighted)
        }
        
        button.sizeToFit()
        
        self.customView = button
    }
}
