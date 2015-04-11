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
    var increment_and_decrement_counter = 0
    var count_label:UILabel!
    var increment_and_decrement_label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //labels
        self.create_and_init_count_label()
        self.view.addSubview(self.count_label)

        self.create_and_init_increment_and_decrement_label()
        self.view.addSubview(self.increment_and_decrement_label)
        
        //buttons
        var increment_button = self.create_and_init_increment_button()
        self.view.addSubview(increment_button)

        var decrement_button = self.create_and_init_decrement_button()
        self.view.addSubview(decrement_button)
        
        self.update_labels()
    }
    
    func create_and_init_decrement_button() -> UIButton {
        let button = UIButton()
        button.frame = CGRectMake(50, 250, 100, 60)
        //        button.backgroundColor = UIColor.redColor()
        button.titleLabel?.text = "Test"
        button.setTitle("decrement", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.addTarget(self, action: "decrement_count_on_label", forControlEvents: UIControlEvents.TouchUpInside)
        return button

    }

    func create_and_init_increment_button() -> UIButton {
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 60)
//        button.backgroundColor = UIColor.redColor()
        button.titleLabel?.text = "Test"
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.addTarget(self, action: "increment_count_on_labels", forControlEvents: UIControlEvents.TouchUpInside)
        return button
    }
    
    
    func create_and_init_count_label() {
        self.count_label = self.create_label_with_frame(CGRectMake(150, 150, 60, 60))
    }
    
    func create_and_init_increment_and_decrement_label() {
        self.increment_and_decrement_label = self.create_label_with_frame(CGRectMake(150, 200, 60, 60))
    }

    
    func create_label_with_frame(frame:CGRect) -> UILabel {
        let label = UILabel()
        label.frame = frame
        return label
    }
    
    func increment_count_on_labels () {
        self.click_counter++
        self.increment_and_decrement_counter++
        self.update_labels()
    }
    
    func update_labels() {
        self.count_label.text = "\(self.click_counter)"
        self.increment_and_decrement_label?.text = "\(self.increment_and_decrement_counter)"
    }
    
    func decrement_count_on_label() {
        self.increment_and_decrement_counter--
        self.update_labels()
    }
}