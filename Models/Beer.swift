//
//  QYBaseBeer.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import Foundation

final class Beer: NSObject, NSCoding {
    
    // MARK: Keys
    enum Keys: String {
        case Name = "name"
        case Rating = "rating"
        case ImagePath = "image"
        case Note = "note"
    }
    
    // MARK: - Properties
    var name: String
    var rating: Int
    var imagePath: String?
    var note: String?
    
    // MARK: - Initializers
    override init() {
        name = ""
        rating = 1
        super.init()
    }
    
    init(name: String, imagePath: String? = nil, note: String?, rating: Int) {
        self.name = name
        self.imagePath = imagePath
        self.note = note
        self.rating = rating
        super.init()
    }
    
    // MARK: - NSCoding
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: Keys.Name.rawValue) as! String
        rating = (aDecoder.decodeObject(forKey: Keys.Rating.rawValue) as! NSNumber).intValue
        imagePath = aDecoder.decodeObject(forKey: Keys.ImagePath.rawValue) as? String
        note = aDecoder.decodeObject(forKey: Keys.Note.rawValue) as? String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: Keys.Name.rawValue)
        aCoder.encode(NSNumber(value: rating), forKey: Keys.Rating.rawValue)
        aCoder.encode(imagePath, forKey: Keys.ImagePath.rawValue)
        aCoder.encode(note, forKey: Keys.Note.rawValue)
    }
}
