//
//
// PixelKit
// Created by: tiago.pereira on 17/5/25
//

import SwiftUI

public struct ImageHeaderView: View {
    public let content: Content
    
    public init(_ content: Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack {
                content.image
            }
            .frame(maxWidth: UIScreen.main.bounds.width)
            .frame(height: 168)
            .clipped()
            
            
            HStack(spacing: 8) {
                content.delete
                content.change
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 16)
        }
    }
}


#Preview {
    VStack {
        ImageHeaderView(
            .init(
                image: .image(Image("example", bundle: .module)),
                delete: .destructive("Delete") {},
                change: .default("Change") {}
            )
        )
        ImageHeaderView(
            .init(
                image: .loading
            )
        )
        ImageHeaderView(
            .init(
                image: .image(Image("example", bundle: .module))
            )
        )
        Spacer()
    }
}
