//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//
import SwiftUI

public struct CellTitle: View {
    public var title: String
    
    public init(title: String) {
        self.title = title
    }
    
    public var body: some View {
        Text(title)
            .font(PixelKit.shared.font.body)
            .foregroundStyle(PixelKit.shared.theme.textPrimary)
    }
}
