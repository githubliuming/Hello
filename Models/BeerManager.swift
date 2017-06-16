//
//  BeerManager.swift
//  Hello
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import Foundation

final class BeerManager {
    
    // MARK: - Properties
    static let sharedInstance = BeerManager()
    fileprivate let savePath: String
    var beers = [Beer]()
    
    // MARK: - Initializers
    init() {
        let documentsDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        savePath = documentsDirectory + "/beers.plist"
        
        if let savedBeers = NSKeyedUnarchiver.unarchiveObject(withFile: savePath) as? [Beer] {
            beers = savedBeers
        }
    }
    
    func saveBeers() {
        if !NSKeyedArchiver.archiveRootObject(beers, toFile: savePath) {
            print("Failed to save beers to disk")
        }
    }
}
