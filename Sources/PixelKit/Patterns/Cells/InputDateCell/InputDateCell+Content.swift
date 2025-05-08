//
//
// PixelKit
// Created by: tiago.pereira on 16/5/25
//

import SwiftUI

extension InputDateCell {
    public struct Content {
        public let labels: CellLabels
        public let date: Binding<Date>
        public let units: DatePickerComponents
        public let separator: Bool
        
        public init(
            labels: CellLabels,
            date: Binding<Date>,
            units: DatePickerComponents = .date,
            separator: Bool = true
        ) {
            self.labels = labels
            self.date = date
            self.separator = separator
            self.units = units
        }
    }
}
