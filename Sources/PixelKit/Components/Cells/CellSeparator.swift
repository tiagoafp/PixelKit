//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

struct CellSeparatorView: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .foregroundColor(PixelKit.shared.theme.separator)
            .padding(.leading, 16)
    }
}
