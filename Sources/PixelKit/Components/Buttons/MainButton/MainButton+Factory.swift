//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

import SwiftUI

extension MainButton {
    public static func make(title: String, action: @escaping () -> Void) -> Factory {
        .init(title: title, action: action)
    }
    
    public struct Factory {
        let content: Content
        
        public init(title: String, action: @escaping () -> Void) {
            content = .init(title: title, action: action)
        }
        
        @MainActor
        func build() -> MainButton {
            MainButton(content: content)
        }
    }
}
