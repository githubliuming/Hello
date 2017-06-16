//
//  STRatingControl.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import UIKit
@IBDesignable
open class STRatingControl: UIView {

    private let ratingStruct:QYRating = QYRating();
    var _rating :Int;
    @IBInspectable open var rating :Int = 0{
    
        didSet{
            ratingStruct.rating = rating
            rating = ratingStruct.rating
            setNeedsLayout()
        }
    }
    
    @IBInspectable var maxRating : Int = 5 {
        didSet {
            ratingStruct.maxRating = maxRating
            setNeedsLayout()
        }
    }
    @IBInspectable var filledStarImage : UIImage? {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var emptyStarImage : UIImage? {
        didSet {
            setNeedsDisplay()
        }
    }
    @IBInspectable var spacing : Int = 5 {
        didSet {
            ratingStruct.spacing = spacing
            setNeedsDisplay()
        }
    }
}
