//
//
// PixelKit
// Created by: tiago.pereira on 16/5/25
//

import SwiftUI

public struct InputDateCell: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 6) {
                content.labels
                Spacer()
                
                DatePicker("", selection: content.date, displayedComponents: content.units
                )
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            if content.separator {
                CellSeparatorView()
            }
        }
        .background(PixelKit.shared.theme.surface)
    }
}

#Preview {
    @State var date = Date()
    
    ZStack {
        InputDateCell(
            content: .init(
                labels: .init(title: .init(title: "asd")),
                date: $date,
                units: [.date]
            )
        )
    }
}
