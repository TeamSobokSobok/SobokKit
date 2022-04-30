//
//  SBFont.swift
//  
//
//  Created by taehy.k on 2022/04/30.
//

import UIKit

public enum SBFontType: String, CaseIterable {
    case pretendardBlack = "Pretendard-Black"
    case pretendardBold = "Pretendard-Bold"
    case pretendardExtraBold = "Pretendard-ExtraBold"
    case pretendardExtraLight = "Pretendard-ExtraLight"
    case pretendardLight = "Pretendard-Light"
    case pretendardMedium = "Pretendard-Medium"
    case pretendardRegular = "Pretendard-Regular"
    case pretendardSemibold = "Pretendard-SemiBold"
    case pretendardThin = "Pretendard-Thin"
    
    var name: String {
        return self.rawValue
    }
    
    static var installed = false
}

public extension SBFontType {
    static func install() {
        SBFontType.installed = true
        for each in SBFontType.allCases {
            if let cfURL = Bundle.module.url(forResource: each.rawValue, withExtension: "otf") {
                CTFontManagerRegisterFontsForURL(cfURL as CFURL, .process, nil)
            } else {
                assertionFailure("Could not find font:\(each.rawValue) in bundle:\(Bundle.module)")
            }
        }
    }
}
