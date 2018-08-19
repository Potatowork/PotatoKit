//
//  PKTextAttachment.swift
//  PotatoKit
//
//  Created by Richie on 2018/8/19.
//  Copyright © 2018 person. All rights reserved.
//

import UIKit

public final class PKTextAttachment: NSTextAttachment {
    func attachmentBoundsForTextContainer(textContainer: NSTextContainer, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect {
        let attachmentWidth = lineFrag.width - textContainer.lineFragmentPadding * 2
        return scaleImageSizeToWidth(width: attachmentWidth)
    }
    
    func scaleImageSizeToWidth(width: CGFloat) -> CGRect {
        guard let imageSize = self.image?.size else  {
            return CGRect.zero
        }
        let factor = CGFloat(width / imageSize.width)
        return CGRect(x: 0, y: 0, width: imageSize.width * factor, height: imageSize.height * factor)
    }
}
