//
//
// PixelKit
// Created by: tiago.pereira on 18/5/25
//

extension MiniButton {
    public static func make(variant: MiniButton.Variant = .default, _ action: @escaping () -> Void) -> Factory {
        .init(variant: variant, action: action)
    }
    
    public struct Factory {
        let content: Content
        
        public init(variant: MiniButton.Variant, action: @escaping () -> Void) {
            content = .init(action: action, variant: variant)
        }
        
        @MainActor
        func build() -> MiniButton {
            MiniButton(content: content)
        }
    }
}
