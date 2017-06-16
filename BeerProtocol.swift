//
//  BeerProtocol.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import Foundation

protocol QYUIProtocol {
   
    associatedtype QYImage
    associatedtype QYButton
}
protocol BeerImage:QYUIProtocol {
    
    func beerImage() -> QYImage?
    func saveImage(_ image: QYImage)
}

protocol Rating:QYUIProtocol {
    
    
}
