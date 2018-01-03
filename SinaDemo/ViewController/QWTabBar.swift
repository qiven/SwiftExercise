//
//  QWTabBar.swift
//  SinaDemo
//
//  Created by OneKeyV on 2017/12/29.
//  Copyright © 2017年 OneKeyV. All rights reserved.
//

import UIKit

class QWTabBar: UITabBar {
    
    var composeButtonClosure: (()->())?

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    func setupUI() {
        backgroundImage = #imageLiteral(resourceName: "tabbar_background")
        addSubview(composeButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        composeButton.center = CGPoint(x:self.frame.width * 0.5, y:self.frame.height * 0.5)
        
        let itemW = UIScreen.main.bounds.size.width * 0.2
        var index = 0
        
        for subView in self.subviews {
            if subView.isKind(of: NSClassFromString("UITabBarButton")!) {
                let itemX = CGFloat(index) * itemW
                subView.frame.size.width = itemW
                subView.frame.origin.x = itemX
                
                index = index + 1
                if index == 2 {
                    index = index + 1
                }
            }
        }
    }
    
    @objc private func composeButtonClick() {
        composeButtonClosure?()
    }
    
    lazy var composeButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(composeButtonClick), for:UIControlEvents.touchUpInside)
        button.setImage(#imageLiteral(resourceName: "tabbar_compose_icon_add"), for: UIControlState.normal)
        button.setImage(#imageLiteral(resourceName: "tabbar_compose_icon_add_highlighted"), for: UIControlState.highlighted)
        button.setBackgroundImage(#imageLiteral(resourceName: "tabbar_compose_button"), for: UIControlState.normal)
        button.setBackgroundImage(#imageLiteral(resourceName: "tabbar_compose_button_highlighted"), for: UIControlState.highlighted)
        button.sizeToFit()
        return button
    }()
}
