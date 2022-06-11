//
//  Font+.swift
//  Memosdotpub
//
//  Created by Khoa Le on 12/06/2022.
//

import SwiftUI

struct InterFont {
    static let regular = "Inter-Regular"
    static let medium = "Inter-Medium"
    static let semiBold = "Inter-SemiBold"
    static let bold = "Inter-Bold"
}

extension Font {
    static var interTitle: Font {
        return Font
            .custom(InterFont.bold, size: 24)
    }
    
    static var interBody: Font {
        return Font
            .custom(InterFont.regular, size: 16)
    }
    
    static var interHeading: Font {
        return Font
            .custom(InterFont.semiBold, size: 20)
    }
}

extension Text {
    func lineHeight(font: UIFont, lineHeight: CGFloat) -> some View {
        return self
            .lineSpacing(lineHeight - font.lineHeight)
            .padding(.vertical, (lineHeight - font.lineHeight) / 2)
    }
    
    func titleFont() -> some View {
        let font = UIFont(name: InterFont.bold, size: 24)!
        return self
            .font(.interTitle)
            .lineHeight(font: font, lineHeight: 32)
    }
    
    func headingFont() -> some View {
        let font = UIFont(name: InterFont.semiBold, size: 20)!
        return self
            .font(.interHeading)
            .lineHeight(font: font, lineHeight: 26)
    }
    
    func bodyFont() -> some View {
        let font = UIFont(name: InterFont.regular, size: 16)!
        return self
            .font(.interBody)
            .lineHeight(font: font, lineHeight: 24)
    }
    
}
