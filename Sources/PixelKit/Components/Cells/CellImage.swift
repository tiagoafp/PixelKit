//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//
import SwiftUI

public struct CellImage: View {
    let variant: Variant
    
    public init(_ variant: Variant) {
        self.variant = variant
    }
    
    public var body: some View {
        switch variant {
        case .rounded(let image):
            return image
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        }
    }
}

extension CellImage {
    public enum Variant {
        case rounded(Image)
    }
}
