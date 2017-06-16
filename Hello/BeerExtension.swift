//
//  BeerExtension.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import UIKit
// MARK: - Image Saving
extension Beer :BeerImage {
    
    typealias QYImage  = UIImage
    
    func saveImage(_ image: QYImage) {
        guard let imgData = UIImageJPEGRepresentation(image, 0.5),
            let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
                return
        }
        
        let fileName = "\(UUID().uuidString).jpg"
        let pathName = (path as NSString).appendingPathComponent(fileName)
        if (try? imgData.write(to: URL(fileURLWithPath: pathName), options: [.atomic])) != nil {
            imagePath = fileName
        }
    }
    
    func beerImage() -> QYImage? {
        guard let imagePath = imagePath,
            let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else {
                return nil
        }
        
        let pathName = (path as NSString).appendingPathComponent(imagePath)
        return QYImage(contentsOfFile: pathName)
    }
}
