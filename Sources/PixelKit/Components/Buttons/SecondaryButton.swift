//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct SecondaryButton: View {
    public let title: String
    public let action: () -> Void
    let variant: Variant
    
    init(
        title: String,
        action: @escaping () -> Void,
        variant: Variant = .default
    ) {
        self.title = title
        self.action = action
        self.variant = variant
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack(alignment: .center) {
                Text(title)
                    .font(PixelKit.shared.font.subHeadline)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .foregroundStyle(Color.white)
            }
            .background(RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(backgroundColor))
        }
    }
}

extension SecondaryButton {
    var backgroundColor: Color {
        switch variant {
        case .default:
            PixelKit.shared.theme.primary
        case .destructive:
            PixelKit.shared.theme.negative
        }
    }
}


extension SecondaryButton {
    public enum Variant {
        case `default`
        case destructive
    }
}

#Preview {
    SecondaryButton(
        title: "Button",
        action: {}
    )
    SecondaryButton(
        title: "Button",
        action: {},
        variant: .destructive
    )
}
