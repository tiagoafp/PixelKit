//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

extension MiniButton {
    public struct Content {
        public let action: () -> Void
        public let variant: Variant
        
        public init(action: @escaping () -> Void, variant: Variant) {
            self.action = action
            self.variant = variant
        }
    }
}
