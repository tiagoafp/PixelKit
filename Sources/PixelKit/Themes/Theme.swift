//
//
// PixelKit
// Created by: tiago.pereira on 7/5/25
//

import SwiftUI

public protocol Theme {
    var background: Color { get }
    var surface: Color { get }
    var surfaceSecondary: Color { get }
    var textPrimary: Color { get }
    var textSecondary: Color { get }
    var textTertiary: Color { get }
    var separator: Color { get }
    var border: Color { get }
    var positive: Color { get }
    var negative: Color { get }
    var warning: Color { get }
    var primary: Color { get }
}

public struct DefaultTheme: Theme {
    public init() {}
    
    public var background: Color { Color("background", bundle: .module) }
    public var surface: Color { Color("surface", bundle: .module) }
    public var surfaceSecondary: Color { Color("surfaceSecondary", bundle: .module) }
    public var textPrimary: Color { Color("textPrimary", bundle: .module) }
    public var textSecondary: Color { Color("textSecondary", bundle: .module) }
    public var textTertiary: Color { Color("textTertiary", bundle: .module) }
    public var separator: Color { Color("separator", bundle: .module) }
    public var border: Color { Color("border", bundle: .module) }
    public var positive: Color { Color("positive", bundle: .module) }
    public var negative: Color { Color("negative", bundle: .module) }
    public var warning: Color { Color("warning", bundle: .module) }
    public var primary: Color { Color("primary", bundle: .module) }
}

#Preview("Dark theme", body: {
    let theme = DefaultTheme()
    VStack {
        Rectangle().fill(theme.background)
        Rectangle().fill(theme.surface)
        Rectangle().fill(theme.surfaceSecondary)
        Rectangle().fill(theme.textPrimary)
        Rectangle().fill(theme.textSecondary)
        Rectangle().fill(theme.textTertiary)
        Rectangle().fill(theme.separator)
        Rectangle().fill(theme.border)
        Rectangle().fill(theme.positive)
        Rectangle().fill(theme.negative)
        Rectangle().fill(theme.warning)
        Rectangle().fill(theme.primary)
    }.preferredColorScheme(.dark)
})

#Preview("Light theme", body: {
    let theme = DefaultTheme()
    
    VStack {
        Rectangle().fill(theme.background)
        Rectangle().fill(theme.surface)
        Rectangle().fill(theme.surfaceSecondary)
        Rectangle().fill(theme.textPrimary)
        Rectangle().fill(theme.textSecondary)
        Rectangle().fill(theme.textTertiary)
        Rectangle().fill(theme.separator)
        Rectangle().fill(theme.border)
        Rectangle().fill(theme.positive)
        Rectangle().fill(theme.negative)
        Rectangle().fill(theme.warning)
        Rectangle().fill(theme.primary)
    }.preferredColorScheme(.light)
})
