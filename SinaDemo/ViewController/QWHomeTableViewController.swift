//
//  QWHomeTableViewController.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

class QWHomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imgName: "navigationbar_friendsearch", title: nil, target: nil, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(imgName: "navigationbar_pop", title: nil, target: self, action: #selector(pop))
    }
    
    @objc func pop() {
        print("跳转。。")
    }
}
