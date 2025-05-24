//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

import SwiftUI

public struct FooterActionView: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            HStack(spacing: 8) {
                ForEach(0..<content.buttons.count, id: \.self) { index in
                    content.buttons[index]
                }
            }
            .padding(.bottom, 32)
            .padding(.top, 12)
            .padding(.horizontal, 16)
        }
        .background(PixelKit.shared.theme.surface)
    }
}

extension FooterActionView {
    static func withButtons(_ buttons: [MainButton]) -> Self {
        .init(content: .init(buttons: buttons))
    }
}

#Preview {
    ZStack(alignment: .bottom) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.background)
        FooterActionView.withButtons([
            .make(
                title: "Make a Payment",
                action: {}
            ).build(),
            .make(
                title: "Make a Payment",
                action: {}
            ).build()
        ])
    }
}
