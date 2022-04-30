//
//  SBTypography.swift
//  
//
//  Created by taehy.k on 2022/04/30.
//

import UIKit

public struct FontDescription {
    let fontType: SBFontType
    let size: CGFloat
    let lineHeight: CGFloat
    let spacing: Double
}

public struct SBTypography {
    
    public enum Style {
        /// Header
        case h1
        
        /// Title - Main
        case title1b, title2m, title3sm
        
        /// Title - Sub
        case title1m, title3m
        
        /// Body - Main
        case body1b, body2sm, body3eb, body4sm, body5sm, body6m, body7sm, body8m, body9b
        
        /// Body - Sub
        case body2m, body2r
        case body3m, body3r
        case body4m, body4r
        case body5m
        case body7m
        case body9m
    }
}

extension SBTypography.Style {
    
    public var description: FontDescription {
        switch self {
        /// Header
        case .h1:           return FontDescription(fontType: .pretendardBold, size: 24, lineHeight: 1.47, spacing: -0.01)
        
        /// Title
        case .title1b:      return FontDescription(fontType: .pretendardBold, size: 23, lineHeight: 1.5, spacing: 0)
        case .title1m:      return FontDescription(fontType: .pretendardMedium, size: 23, lineHeight: 1.5, spacing: 0)
        case .title2m:      return FontDescription(fontType: .pretendardMedium, size: 16, lineHeight: 1.35, spacing: 0)
        case .title3sm:     return FontDescription(fontType: .pretendardSemibold, size: 15, lineHeight: 1.4, spacing: 0)
        case .title3m:      return FontDescription(fontType: .pretendardMedium, size: 15, lineHeight: 1.4, spacing: 0)
        
        /// Body
        case .body1b:       return FontDescription(fontType: .pretendardBold, size: 22, lineHeight: 1.4, spacing: -0.01)
        case .body2sm:      return FontDescription(fontType: .pretendardSemibold, size: 18, lineHeight: 1.4, spacing: 0)
        case .body2m:       return FontDescription(fontType: .pretendardMedium, size: 18, lineHeight: 1.4, spacing: 0)
        case .body2r:       return FontDescription(fontType: .pretendardRegular, size: 18, lineHeight: 1.4, spacing: 0)
        case .body3eb:      return FontDescription(fontType: .pretendardExtraBold, size: 17, lineHeight: 1.4, spacing: 0)
        case .body3m:       return FontDescription(fontType: .pretendardMedium, size: 17, lineHeight: 1.4, spacing: 0)
        case .body3r:       return FontDescription(fontType: .pretendardRegular, size: 17, lineHeight: 1.4, spacing: 0)
        case .body4sm:      return FontDescription(fontType: .pretendardSemibold, size: 16, lineHeight: 1.4, spacing: 0)
        case .body4m:       return FontDescription(fontType: .pretendardMedium, size: 16, lineHeight: 1.4, spacing: 0)
        case .body4r:       return FontDescription(fontType: .pretendardRegular, size: 16, lineHeight: 1.4, spacing: 0)
        case .body5sm:      return FontDescription(fontType: .pretendardSemibold, size: 15, lineHeight: 1.5, spacing: 0)
        case .body5m:       return FontDescription(fontType: .pretendardMedium, size: 15, lineHeight: 1.5, spacing: 0)
        case .body6m:       return FontDescription(fontType: .pretendardMedium, size: 14, lineHeight: 1.5, spacing: 0)
        case .body7sm:      return FontDescription(fontType: .pretendardSemibold, size: 13, lineHeight: 1.4, spacing: 0)
        case .body7m:       return FontDescription(fontType: .pretendardMedium, size: 13, lineHeight: 1.4, spacing: 0)
        case .body8m:       return FontDescription(fontType: .pretendardMedium, size: 12, lineHeight: 1.4, spacing: 0)
        case .body9b:       return FontDescription(fontType: .pretendardBold, size: 11, lineHeight: 1.5, spacing: 0)
        case .body9m:       return FontDescription(fontType: .pretendardMedium, size: 11, lineHeight: 1.5, spacing: 0)
        }
    }
    
}

extension UILabel {
    
    public func sbTypo(_ style: SBTypography.Style, color: UIColor? = nil) {
        if let text = text, text.count > 0 {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = style.description.lineHeight
            attributedText = NSAttributedString(
                string: text,
                attributes: [
                    .foregroundColor: color ?? UIColor.black,
                    .font: style.description.fontType,
                    .kern: style.description.spacing,
                    .paragraphStyle: paragraphStyle
                ]
            )
        }
    }

}
