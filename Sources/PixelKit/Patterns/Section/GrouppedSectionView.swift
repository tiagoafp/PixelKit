//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

import SwiftUI

public struct GrouppedSectionView<Cells: View>: View {
    public let content: Content
    
    public init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            content.title
            
            VStack(spacing: 0) {
                content.cells()
            }
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            .clipped()
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(
                        PixelKit.shared.theme.surface
                    )
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
    }
}

#Preview {
    ZStack (alignment: .top) {
        Rectangle().foregroundStyle(PixelKit.shared.theme.background)
        VStack(spacing: 0) {
            GrouppedSectionView(
                content: .init(
                    title: .init(
                        content: .init(
                            title: "Section",
                            action: .default("Make", action: {
                            })
                        )
                    ),
                    cells: {
                        VStack(spacing: 0){
                            DisplayCell(
                                .init(
                                    labels: .init(title: .init(title: "asdas")),
                                    disclosure: true
                                )
                            )
                            
                            DisplayCell(
                                .init(
                                    labels: .init(title: .init(title: "asdas")),
                                    disclosure: true
                                )
                            )
                        }
                    })
            )
            GrouppedSectionView(
                content: .init(
                    title: .init(
                        content: .init(
                            title: "Section",
                            action: .default("Make", action: {
                            })
                        )
                    ),
                    cells: {
                        VStack(spacing: 0){
                            DisplayCell(
                                .init(
                                    labels: .init(title: .init(title: "asdas")),
                                    disclosure: true
                                )
                            )
                            
                            DisplayCell(
                                .init(
                                    labels: .init(title: .init(title: "asdas")),
                                    disclosure: true
                                )
                            )
                        }
                    })
            )
        }
        
    }
}
