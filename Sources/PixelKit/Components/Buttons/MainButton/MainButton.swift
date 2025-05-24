//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct MainButton: View {
    let content: Content
    
    init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        Button(action: content.action) {
            ZStack(alignment: .center) {
                Rectangle().frame(height: 0)
                
                Text(content.title)
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


#Preview {
    MainButton
        .make(title: "Title", action: {})
        .build()
}
