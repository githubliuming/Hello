//
//  QYRating.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import Foundation


public struct QYRating:QYUIProtocol{

    var rating:Int = 0{
    
        didSet{
        
            if rating <0
            {
                rating = 0;
            }
            if rating > maxRating{
            
                rating = maxRating;
            }
        }
    }
    
    var maxRating = 5
    var spacing : Int = 5
    var emptyStarImage :QYImage
    var emptyStarImage : QYImage?
    var ratingButtons = [QYButton]()
    
}
