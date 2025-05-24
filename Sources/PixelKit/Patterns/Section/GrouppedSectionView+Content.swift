//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

import SwiftUI

extension GrouppedSectionView {
    public struct Content {
        public let title: SectionTitleCell?
        @ViewBuilder let cells: () -> Cells
        
        public init(title: SectionTitleCell?, cells: @escaping () -> Cells) {
            self.title = title
            self.cells = cells
        }
    }
}
