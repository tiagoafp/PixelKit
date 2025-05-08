//
//
// PixelKit
// Created by: tiago.pereira on 16/5/25
//

import SwiftUI

extension InputNumberCell {
    public struct Content {
        public let labels: CellLabels
        public let value: Binding<Int>
        public let separator: Bool
        
        public init(
            labels: CellLabels,
            value: Binding<Int>,
            separator: Bool = true
        ) {
            self.labels = labels
            self.value = value
            self.separator = separator
        }
    }
}
