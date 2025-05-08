//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct CellLabels: View {
    public let title: CellTitle
    public let subtitle: CellSubtitle?
    
    public init(title: CellTitle, subtitle: CellSubtitle? = nil) {
        self.title = title
        self.subtitle = subtitle
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            title
            subtitle
        }
    }
}

#Preview("Light") {
    ZStack(alignment: .center) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.surface)
        
        VStack(alignment: .leading, spacing: 10) {
            Rectangle().frame(height: 0)
            CellLabels(
                title: .init(title: "Title")
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle")
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .warning)
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .positive)
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .negative)
            )
        }
        .preferredColorScheme(.light)
        .padding(16)
    }
}

#Preview("Dark") {
    ZStack(alignment: .center) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.surface)
        VStack(alignment: .leading, spacing: 10) {
            Rectangle().frame(height: 0)
            CellLabels(
                title: .init(title: "Title")
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle")
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .warning)
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .positive)
            )
            
            CellLabels(
                title: .init(title: "Title"),
                subtitle: .init(subtitle: "subtitle", variant: .negative)
            )
        }
        .preferredColorScheme(.dark)
    }
}

