//
//
// PixelKit
// Created by: tiago.pereira on 17/5/25
//

import SwiftUI

extension ImageHeaderView {
    public struct Content {
        public let image: ImageView
        public let delete: SecondaryButton?
        public let change: SecondaryButton?
        
        public init(image: ImageView, delete: SecondaryButton? = nil, change: SecondaryButton? = nil) {
            self.image = image
            self.delete = delete
            self.change = change
        }
    }
}
