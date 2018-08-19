//
//  NSAttributeString+Extension.swift
//  PotatoKit
//
//  Created by Richie on 2018/8/19.
//  Copyright © 2018 person. All rights reserved.
//

import Foundation

// MARK: - 关于NSAttributedString的扩展
extension NSAttributedString {
    
    /// 根据html 创建 NSAttributedString
    ///
    /// - Parameter string: html
    /// - Returns: NSAttributedString
    /// - Throws: error
    public class func attributedString(html string: String) throws -> NSAttributedString {
        guard let data = string.data(using: String.Encoding.unicode) else {
            throw EmptyError.empty
        }
        let ats = try NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.html], documentAttributes: nil)
        return ats
    }
    
    /// 根据image 生成 NSAttributedString
    ///
    /// - Parameters:
    ///   - img: 图片
    ///   - bounds: 图片的位置
    /// - Returns: NSAttributedString
    public class func attributedString(image img: UIImage, bounds: CGRect) -> NSAttributedString {
        let ta = NSTextAttachment()
        ta.bounds = bounds
        ta.image = img
        let ats = NSAttributedString(attachment: ta)
        return ats
    }
}
