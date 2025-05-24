//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct MiniButton: View {
    public let content: Content
    
    init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        Button(action: content.action) {
            ZStack(alignment: .center) {
                Image("ic_plus", bundle: .module)
            }
            .frame(width: 26, height: 26)
            .background(RoundedRectangle(cornerRadius: 26)
                .foregroundStyle(backgroundColor))
        }
    }
}

extension MiniButton {
    var backgroundColor: Color {
        switch content.variant {
        case .default:
            PixelKit.shared.theme.primary
        case .destructive:
            PixelKit.shared.theme.negative
        }
    }
}

extension MiniButton {
    public enum Variant {
        case `default`
        case destructive
    }
}

#Preview {
    MiniButton.make({}).build()
    MiniButton.make(variant: .destructive, {}).build()
}
