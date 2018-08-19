//
//  EmptyError.swift
//  PotatoKit
//
//  Created by Richie on 2018/8/19.
//  Copyright © 2018 person. All rights reserved.
//

import Foundation

/// 自定义 空错误
///
/// - empty: 空
/// - convert: 转换错误
public enum EmptyError: Error {
    case empty
    case convert

    public var localizedDescription: String {
        switch self {
        case .empty:
            return "内容不能为空"
        default:
            return "无法转换内容,请更改使用其他参数"
        }
    }
}
