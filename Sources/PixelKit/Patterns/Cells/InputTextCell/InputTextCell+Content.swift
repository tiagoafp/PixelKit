//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//


import SwiftUI

extension InputTextCell {
    public struct Content {
        public let labels: CellLabels
        public let text: Binding<String>
        public let placeholder: String?
        public let close: String
        public let separator: Bool
        
        public init(
            labels: CellLabels,
            text: Binding<String>,
            placeholder: String? = nil,
            close: String = "Close",
            separator: Bool = true
        ) {
            self.labels = labels
            self.text = text
            self.placeholder = placeholder
            self.close = close
            self.separator = separator
        }
    }
}
