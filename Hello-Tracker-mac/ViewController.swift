//
//  ViewController.swift
//  Hello-Tracker-mac
//
//  Created by yoyo on 2017/6/16.
//  Copyright © 2017年 yoyo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var imageView:NSImageView!
    @IBOutlet weak var  nameField:NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func ImageChanged(_ sender: NSImageView) {
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController:NSTableViewDelegate,NSTableViewDataSource{

}

