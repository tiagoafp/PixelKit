//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct DisplayCell: View {
    let content: Content
    
    public init(_ content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 6) {
                content.onDelete
                content.image
                content.labels
                Spacer()
                ZStack {
                    content.disclosure?.image
                        .renderingMode(.template)
                        .resizable()
                        .tint(PixelKit.shared.theme.textTertiary)
                        .frame(width: 8, height: 15)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .frame(minHeight: 56)
            
            if content.separator {
                CellSeparatorView()
            }
        }
        .background(PixelKit.shared.theme.surface)
    }
}

#Preview {
    ZStack {
        Rectangle().fill(PixelKit.shared.theme.background)
        VStack {
            DisplayCell(
                .init(
                    onDelete: .init({}),
                    image: .init(
                        .rounded(
                            .image(Image("ic_plus", bundle: .module))
                    )),
                    labels: .init(
                        title: .init(title: "Title"),
                        subtitle: .init(subtitle: "Subtitle")
                    ),
                    disclosure: true
                )
            )
        }
    }
}
