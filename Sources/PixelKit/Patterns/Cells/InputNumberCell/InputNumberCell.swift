//
//
// PixelKit
// Created by: tiago.pereira on 16/5/25
//

import SwiftUI

public struct InputNumberCell: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 6) {
                HStack {
                    content.labels
                    Spacer()
                }
                HStack(spacing: 8) {
                    Stepper(value: content.value, label: {
                        HStack {
                            TextField("", value: content.value, formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .font(PixelKit.shared.font.caption)
                                .foregroundStyle(PixelKit.shared.theme.textSecondary)
                            Spacer()
                        }
                        .padding(5)
                        .background(content: {
                            ZStack (alignment: .center) {
                                RoundedRectangle(cornerRadius: 4)
                                    .foregroundStyle(PixelKit.shared.theme.surfaceSecondary)
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(
                                        style: .init(lineWidth: 0.4)
                                    )
                                    .foregroundStyle(PixelKit.shared.theme.border)
                            }
                        })
                    })
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            if content.separator {
                CellSeparatorView()
            }
        }
    }
}


#Preview {
    @State var value = 10
    VStack {
        InputNumberCell(
            content: .init(
                labels: .init(
                    title: .init(title: "Title"),
                    subtitle: .init(subtitle: "Sub")
                ),
                value: $value)
        )
    }
}
