//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

extension MainButton {
    public struct Content {
        public let title: String
        public let action: () -> Void
        
        public init(title: String, action: @escaping () -> Void) {
            self.title = title
            self.action = action
        }
    }
}
