//
//  QWTabBarViewController.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

class QWTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBar = QWTabBar()
        
        let closure = { [weak self] in
            print("弹出菜单 \(String(describing: self))")
        }
        
        tabBar.composeButtonClosure = closure
        self.setValue(tabBar, forKeyPath: "tabBar")
        
        addChildViewControllers()
    }
    
    func addChildViewControllers() {
        addChildViewController(vc: QWHomeTableViewController(), title: "首页", imgName: "tabbar_home")
        addChildViewController(vc: QWMessageTableViewController(), title: "消息", imgName: "tabbar_message_center")
        addChildViewController(vc: QWDiscoverTableViewController(), title: "发现", imgName: "tabbar_discover")
        addChildViewController(vc: QWProfileTableViewController(), title: "我", imgName: "tabbar_profile")
    }

    func addChildViewController(vc: UIViewController, title: String, imgName: String) {
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imgName)
        vc.tabBarItem.selectedImage = UIImage(named: "\(imgName)_selected")
        vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.orange], for: UIControlState.selected)
        
        let navVC = QWNavigationController(rootViewController: vc)
        addChildViewController(navVC)
    }
}
