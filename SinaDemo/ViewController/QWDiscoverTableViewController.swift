//
//  QWDiscoverTableViewController.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

class QWDiscoverTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        let searchView = QWDiscoverSearchView.searchView()
        searchView.frame = CGRect(x: 0, y: 0, width:UIScreen.main.bounds.width, height: 30)
        navigationItem.titleView = searchView
    }
}
