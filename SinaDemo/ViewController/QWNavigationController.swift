//
//  QWNavigationController.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

class QWNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(imgName: "navigationbar_back_withtext", title: "返回", target: self, action: #selector(back))
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc func back() {
        _ = popViewController(animated: true)
    }
}
