//
//  SBFont.swift
//  
//
//  Created by taehy.k on 2022/04/30.
//

import Foundation

public enum SBFontType: String {
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
}
