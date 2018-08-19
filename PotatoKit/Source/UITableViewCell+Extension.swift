//
//  UITableViewCell+Extension.swift
//  PotatoKit
//
//  Created by Richie on 2018/8/16.
//  Copyright © 2018 person. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    /// 展示基本的内容
    ///
    /// - Parameters:
    ///   - image: 图片
    ///   - title: 标题
    ///   - detail: 子标题
    public func display(content image:UIImage?, title:String?, detail:String? = nil) {
        self.imageView?.image = image
        self.textLabel?.text = title
        self.detailTextLabel?.text = detail
    }
}

