//
//
// PixelKit
// Created by: tiago.pereira on 17/5/25
//

import SwiftUI

public struct ImageView: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            switch content {
            case .image(let image), .placeholder(let image):
                image.resizable().scaledToFill()
            case .loading:
                ProgressView()
            }
        }
    }
}

extension ImageView {
    public static func image(_ image: Image) -> Self {
        .init(content: .image(image))
    }
    
    public static var loading: Self {
        .init(content: .loading)
    }
    
    public static func placeholder(_ image: Image) -> Self {
        .init(content: .placeholder(image))
    }
}

#Preview {
    ImageView(content: .image(Image("disclosure", bundle: .module)))
    ImageView(content: .loading)
    ImageView(content: .placeholder(Image("disclosure", bundle: .module)))
}
