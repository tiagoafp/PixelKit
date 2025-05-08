// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct PixelKit {
    public var theme: Theme
    public var font: FontBook
    
    init(theme: Theme, font: FontBook) {
        self.theme = theme
        self.font = font
    }
    
    @MainActor static let shared: PixelKit = .init(theme: DefaultTheme(), font: DefaultFontBook())
}
