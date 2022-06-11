//
//  UIColor+Pallete.swift
//  Memosdotpub
//
//  Created by Khoa Le on 11/06/2022.
//

import SwiftUI
import UIKit

protocol ColorPallete {
    associatedtype ColorType
    
    static var background: ColorType { get }
    static var preCode: ColorType { get }
    static var title: ColorType { get }
    static var title2: ColorType { get }
    static var gray11: ColorType { get }
    static var body: ColorType { get }
    static var specialChars: ColorType { get }
    static var placeholder: ColorType { get }
    static var bluePrimary: ColorType { get }
}

extension UIColor: ColorPallete {
    typealias ColorType = UIColor
    
    static var background: UIColor {
        "F3F4F6".color
    }
    
    static var preCode: UIColor {
        "E5E7EB".color
    }
    
    static var title: UIColor {
        "111827".color
    }
    
    static var title2: UIColor {
        "6D727F".color
    }
    
    static var gray11: UIColor {
        "FBFBFB".color
    }
    
    static var body: UIColor {
        "374151".color
    }
    
    static var specialChars: UIColor {
        "D2D5DB".color
    }
    
    static var placeholder: UIColor {
        "9EA3AF".color
    }
    
    static var bluePrimary: UIColor {
        "6466E9".color
    }
}

extension Color: ColorPallete {
    typealias ColorType = Color
    
    static var background: Color {
        Color(UIColor.background)
    }
    
    static var preCode: Color {
        Color(UIColor.preCode)
    }
    
    static var title: Color {
        Color(UIColor.title)
    }
    
    static var title2: Color {
        Color(UIColor.title2)
    }
    
    static var gray11: Color {
        Color(UIColor.gray11)
    }
    
    static var body: Color {
        Color(UIColor.body)
    }
    
    static var specialChars: Color {
        Color(UIColor.specialChars)
    }
    
    static var placeholder: Color {
        Color(UIColor.placeholder)
    }
    
    static var bluePrimary: Color {
        Color(UIColor.bluePrimary)
    }
}

extension String {
    public var color: UIColor {
        UIColor.fromHex(self)
    }
}
