//
//  Constants.swift
//  TheGreatParallax
//
//  Created by King on 2019/10/19.
//  Copyright © 2019 Larry Natalicio. All rights reserved.
//

import Foundation
import UIKit

final class Constants {
    static var statusbarHeight: CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }
    
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var headerImageWidth: CGFloat {
        return 320
    }
    
    static var headerImageHeight: CGFloat {
        return 582
    }
    
    static var defaultSectionHeight: CGFloat {
        return 58
    }
    
    static var defaultCellHeight: CGFloat {
        return 200
    }
    
    static var imageHeaderSize: CGSize {
//        let height: CGFloat = screenWidth * headerImageHeight / headerImageWidth - statusbarHeight
        return CGSize(width: screenWidth, height: headerImageHeight)
    }
    
    static var defaultParallaxOffset: CGPoint {
        let headerHeight = screenWidth * headerImageHeight / headerImageWidth
        let offsetY = (headerHeight + defaultSectionHeight + defaultCellHeight) / (screenHeight + defaultCellHeight)
        return CGPoint(x: 0.5, y: offsetY)
    }
}
