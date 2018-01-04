//
//  QWDiscoverSearchView.swift
//  SinaDemo
//
//  Created by OneKeyV on 2018/1/4.
//  Copyright © 2018年 OneKeyV. All rights reserved.
//

import UIKit

@IBDesignable class QWDiscoverSearchView: UIButton {

    class func searchView() -> QWDiscoverSearchView {
        let view = Bundle.main.loadNibNamed("QWDiscoverSearchView", owner: nil, options: nil)?.last! as! QWDiscoverSearchView
        return view
    }

    override func awakeFromNib() {
        self.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        self.titleEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0)
    }
}
