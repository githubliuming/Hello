//
//  BeerExtension.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import AppKit

// MARK: - Image Saving
extension Beer: BeerImage {
    // 1.
    typealias QYImage = NSImage
    
    func beerImage() -> QYImage? {
        // 2.
        guard let imagePath = imagePath,
            let path = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true).first else {
                return #imageLiteral(resourceName: "beerMugPlaceholder")
        }
        let pathName = (path as NSString).appendingPathComponent(imagePath)
        guard let image = QYImage(contentsOfFile: pathName) else { return #imageLiteral(resourceName: "beerMugPlaceholder") }
        return image
    }
    
    func saveImage(_ image: QYImage) {
        // 3.
        guard let imgData = image.tiffRepresentation,
            let path = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true).first else {
                return
        }
        
        let fileName = "/BeerTracker/\(UUID().uuidString).jpg"
        let pathName = (path as NSString).appendingPathComponent(fileName)
        if (try? imgData.write(to: URL(fileURLWithPath: pathName), options: [.atomic])) != nil {
            imagePath = fileName
        }
    }
}
