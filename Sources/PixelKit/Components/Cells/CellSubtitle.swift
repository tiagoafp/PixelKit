//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//


import SwiftUI

public struct CellSubtitle: View {
    let subtitle: String
    let variant: Variant
    
    public init(subtitle: String, variant: Variant = .default) {
        self.subtitle = subtitle
        self.variant = variant
    }
    
    public var body: some View {
        Text(subtitle)
            .font(PixelKit.shared.font.caption)
            .foregroundStyle(fontColor)
    }
}

extension CellSubtitle {
    var fontColor: Color {
        switch variant {
        case .default:
            PixelKit.shared.theme.textSecondary
        case .warning:
            PixelKit.shared.theme.warning
        case .positive:
            PixelKit.shared.theme.positive
        case .negative:
            PixelKit.shared.theme.negative
        }
    }
}

extension CellSubtitle {
    public enum Variant {
        case `default`
        case warning
        case positive
        case negative
    }
}

#Preview("Light") {
    ZStack(alignment: .center) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.surface)
        VStack {
            CellSubtitle(subtitle: "Subtitle")
            CellSubtitle(subtitle: "Subtitle", variant: .warning)
            CellSubtitle(subtitle: "Subtitle", variant: .positive)
            CellSubtitle(subtitle: "Subtitle", variant: .negative)
        }
        .preferredColorScheme(.light)
    }
}

#Preview("Dark") {
    ZStack(alignment: .center) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.surface)
        VStack {
            CellSubtitle(subtitle: "Subtitle")
            CellSubtitle(subtitle: "Subtitle", variant: .warning)
            CellSubtitle(subtitle: "Subtitle", variant: .positive)
            CellSubtitle(subtitle: "Subtitle", variant: .negative)
        }
        .preferredColorScheme(.dark)
    }
}
