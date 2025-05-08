//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//


import SwiftUI

public struct InputTextCell: View {
    let content: Content
    @State private var showTextInput = false
    
    public init(_ content: Content) {
        self.content = content
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 6) {
                content.labels
                
                ZStack(alignment: .topLeading) {
                    Rectangle().frame(height: 0)
                    if let placeholder = content.placeholder, content.text.wrappedValue.isEmpty {
                        Text(placeholder)
                            .font(PixelKit.shared.font.body)
                            .foregroundStyle(PixelKit.shared.theme.textTertiary)
                        
                    } else {
                        Text(content.text.wrappedValue)
                            .font(PixelKit.shared.font.body)
                            .foregroundStyle(
                                PixelKit.shared.theme.textSecondary
                            )
                    }
                }
                .padding(5)
                .frame(minHeight: 24)
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
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            if content.separator {
                CellSeparatorView()
            }
        }
        .background(PixelKit.shared.theme.surface)
        .onTapGesture {
            self.showTextInput = true
        }
        .sheet(isPresented: $showTextInput) {
            NavigationView(
                content: {
                    ZStack(alignment: .topLeading) {
                        TextEditor(text: content.text)
                            .font(PixelKit.shared.font.body)
                            .foregroundStyle(PixelKit.shared.theme.textSecondary)
                        if let placeholder = content.placeholder, content.text.wrappedValue.isEmpty {
                            Text(placeholder)
                                .font(PixelKit.shared.font.body)
                                .foregroundStyle(PixelKit.shared.theme.textTertiary)
                                .padding(.top, 9)
                                .padding(.leading, 5)
                            
                        }
                    }
                    .navigationTitle(content.labels.title.title)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(content.close) {
                                showTextInput = false
                            }
                        }
                    }
                    .padding(5)
                    .background(content: {
                        ZStack (alignment: .center) {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(
                                    style: .init(lineWidth: 0.4)
                                )
                                .foregroundStyle(PixelKit.shared.theme.border)
                        }
                    })
                }).padding(16)
        }
    }
}

struct InputTextCell_Previews: PreviewProvider {
    static var previews: some View {
        @State var text = ""
        
        ZStack {
            Rectangle().fill(PixelKit.shared.theme.background)
            VStack {
                InputTextCell(
                    .init(
                        labels: .init(
                            title: .init(title: "Title"),
                            subtitle: nil
                        ),
                        text: $text,
                        placeholder: "Enter your tex"
                    )
                )
            }
        }
    }
}
