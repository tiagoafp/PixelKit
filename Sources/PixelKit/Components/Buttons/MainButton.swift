//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct MainButton: View {
    let title: String
    let action: () -> Void
    
    init(
        title: String,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack(alignment: .center) {
                Rectangle().frame(height: 0)
                
                Text(title)
                    .font(PixelKit.shared.font.headline)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .foregroundStyle(Color.white)
            }
            .background(RoundedRectangle(cornerRadius: 6)
                .foregroundStyle(PixelKit.shared.theme.primary))
        }
    }
}


extension MainButton {
    public struct Content {
        public let title: String
        public let onPress: () -> Void
        
        public init(title: String, onPress: @escaping () -> Void) {
            self.title = title
            self.onPress = onPress
        }
    }
}

#Preview {
    MainButton(
        title: "Button",
        action: {}
    )
    .padding(16)
}
