//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct MiniButton: View {
    public let action: () -> Void
    let variant: Variant
    
    init(
        action: @escaping () -> Void,
        variant: Variant = .default
    ) {
        self.action = action
        self.variant = variant
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack(alignment: .center) {
                Image("ic_plus", bundle: .module)
            }
            .frame(width: 26, height: 26)
            .background(RoundedRectangle(cornerRadius: 26)
                .foregroundStyle(backgroundColor))
        }
    }
    
    static func `default`(action: @escaping () -> Void) -> Self {
        .init(action: action, variant: .default)
    }
    
    static func destructive(action: @escaping () -> Void) -> Self {
        .init(action: action, variant: .destructive)
    }
}

extension MiniButton {
    var backgroundColor: Color {
        switch variant {
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
    MiniButton(
        action: {}
    )
    MiniButton(
        action: {},
        variant: .destructive
    )
}
