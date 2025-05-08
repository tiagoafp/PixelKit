//
//
// PixelKit
// Created by: tiago.pereira on 15/5/25
//

import SwiftUI

public enum Icons: String {
    case disclosure
}

extension Icons {
    var image: Image {
        Image(self.rawValue, bundle: .module)
    }
}
