//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//

import SwiftUI

public struct ToggableCell: View {
    let content: Content
    
    public init(_ content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 6) {
                content.onDelete
                content.image
                content.labels
                Spacer()
                
                Toggle(isOn: content.isOn, label: {})
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

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        @State var isOn = true
        
        ZStack {
            Rectangle().fill(PixelKit.shared.theme.background)
            VStack {
                ToggableCell(
                    .init(
                        onDelete: .init({}),
                        image: .init(.rounded(.image(Image("ic_plus", bundle: .module)))),
                        labels: .init(
                            title: .init(title: "Title"),
                            subtitle: .init(subtitle: "Subtitle")
                        ),
                        isOn: $isOn
                    )
                )
            }
        }
    }
}

struct Toolbar_Dark_Previews: PreviewProvider {
    static var previews: some View {
        @State var isOn = true
        
        ZStack {
            Rectangle().fill(PixelKit.shared.theme.background)
            VStack {
                ToggableCell(
                    .init(
                        onDelete: .init({}),
                        image: .init(.rounded(.image(Image("ic_plus", bundle: .module)))),
                        labels: .init(
                            title: .init(title: "Title"),
                            subtitle: .init(subtitle: "Subtitle")
                        ),
                        isOn: $isOn
                    )
                )
            }
        }.preferredColorScheme(.dark)
    }
}
