//
//  ViewController.swift
//  Click Counter
//
//  Created by CJ Gaspari on 7/10/16.
//  Copyright © 2016 CJ Gaspari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        //Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRectMake(40, 40, 60, 60)
        label2.text = "new label"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        //Button
        let incButton = UIButton()
        incButton.frame = CGRectMake(150, 250, 60, 60)
        incButton.setTitle("+1", forState: .Normal)
        incButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(incButton)
        
        incButton.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        let decButton = UIButton()
        decButton.frame = CGRectMake(300, 300, 60, 60)
        decButton.setTitle("-1", forState: .Normal)
        decButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        
        self.view.addSubview(decButton)
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
 
    */
        
    }
    
    @IBAction func incrementCount(){
        count += 1 //self.count++ (++ is deprecated in Swift 3)
        label.text = "\(count)"
        //label2.text = "\(count)"
        changeBackground()
    }
    
    func decrementCount(){
        count -= 1 //self.count++ (-- is deprecated in Swift 3)
        label.text = "\(count)"
        label2.text = "\(count)"
        changeBackground()
    }
    
    func changeBackground() {
        if view.backgroundColor == UIColor.lightGrayColor() {
            view.backgroundColor = UIColor.cyanColor()
        } else {
            view.backgroundColor = UIColor.lightGrayColor()
        }
    }
}

