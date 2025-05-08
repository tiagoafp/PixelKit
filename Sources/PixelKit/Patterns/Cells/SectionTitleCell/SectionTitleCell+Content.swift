//
//
// PixelKit
// Created by: tiago.pereira on 17/5/25
//

extension SectionTitleCell {
    public struct Content {
        public let title: String
        public let action: SecondaryButton?
    
        public init(title: String, action: SecondaryButton?) {
            self.title = title
            self.action = action
        }
    }
}
