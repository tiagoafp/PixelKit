//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public struct CellDelete: View {
    let action: () -> Void
    
    public init(_ action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 26, height: 26)
                    .foregroundStyle(PixelKit.shared.theme.negative)
                
                RoundedRectangle(cornerRadius: 1)
                    .frame(width: 10, height: 3)
                    .foregroundStyle(Color.white)
            }
        }
    }
}

#Preview {
    CellDelete({})
}
