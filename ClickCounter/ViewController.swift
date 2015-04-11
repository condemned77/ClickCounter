//
//  ViewController.swift
//  ClickCounter
//
//  Created by jason on 11/04/15.
//  Copyright (c) 2015 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var click_counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        var count_label = UILabel()
        count_label.frame = CGRectMake(150, 150, 60, 60)
        count_label.text = String(self.click_counter)
        self.view.addSubview(count_label)
    }


}

