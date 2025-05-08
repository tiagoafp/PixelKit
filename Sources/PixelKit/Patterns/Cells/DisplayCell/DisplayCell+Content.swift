//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//


extension DisplayCell {
    public struct Content {
        public let onDelete: CellDelete?
        public let image: CellImage?
        public let labels: CellLabels
        public let disclosure: Icons?
        public let separator: Bool
        
        public init(
            onDelete: CellDelete? = nil,
            image: CellImage? = nil,
            labels: CellLabels,
            disclosure: Bool,
            separator: Bool = true
        ) {
            self.onDelete = onDelete
            self.image = image
            self.labels = labels
            self.disclosure = disclosure ? .disclosure : nil
            self.separator = separator
        }
    }
}
