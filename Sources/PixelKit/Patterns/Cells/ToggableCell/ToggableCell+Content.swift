//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//

import SwiftUI

extension ToggableCell {
    public struct Content {
        public let onDelete: CellDelete?
        public let image: CellImage?
        public let labels: CellLabels
        public let isOn: Binding<Bool>
        public let separator: Bool
        
        public init(
            onDelete: CellDelete? = nil,
            image: CellImage? = nil,
            labels: CellLabels,
            isOn: Binding<Bool>,
            separator: Bool = true
        ) {
            self.onDelete = onDelete
            self.image = image
            self.labels = labels
            self.isOn = isOn
            self.separator = separator
        }
    }
}
