//
//
// PixelKit
// Created by: tiago.pereira on 8/5/25
//

import SwiftUI

public protocol FontBook {
    var title: Font { get }
    var title2: Font { get }
    var title3: Font { get }
    var titleLarge: Font { get }
    var body: Font { get }
    var caption: Font { get }
    var headline: Font { get }
    var subHeadline: Font { get }
    var footnote: Font { get }
}

public struct DefaultFontBook: FontBook {
    public init() {}
    
    public var title: Font {
        return .system(size: 28, weight: .bold)
    }
    
    public var title2: Font {
        return .system(size: 22, weight: .semibold)
    }
    
    public var title3: Font {
        return .system(size: 20, weight: .semibold)
    }
    
    public var titleLarge: Font {
        return .system(size: 34, weight: .bold)
    }
    
    public var body: Font {
        return .system(size: 17, weight: .regular)
    }
    
    public var caption: Font {
        return .system(size: 13, weight: .regular)
    }
    
    public var headline: Font {
        return .system(size: 17, weight: .semibold)
    }
    
    public var subHeadline: Font {
        return .system(size: 15, weight: .regular)
    }
    
    public var footnote: Font {
        return .system(size: 12, weight: .regular)
    }
}
