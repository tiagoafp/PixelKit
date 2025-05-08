//
//
// PixelKit
// Created by: tiago.pereira on 17/5/25
//

import SwiftUI

public struct SectionTitleCell: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            HStack {
                Text(content.title)
                    .font(PixelKit.shared.font.headline)
                    .foregroundStyle(PixelKit.shared.theme.textSecondary)
                Spacer()
                content.action
            }
            .frame(minHeight: 60)
        }
        .padding(16)
    }
}


#Preview {
    SectionTitleCell(
        content: .init(
            title: "asdas",
            action: .init(title: "asdas", action: {})
        )
    )
}
