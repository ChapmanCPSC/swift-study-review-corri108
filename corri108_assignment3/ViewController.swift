//
//  ViewController.swift
//  corri108_assignment3
//
//  Created by Corrin, Will on 3/28/16.
//  Copyright © 2016 Corrin, Will. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!
    var topics = ["Let v.s. Var",
        "Computed Initializers",
        "Computed Variables",
        "Setter Observers",
        "Functions",
        "External Parameters",
        "Default Parameters",
        "Anonymous Functions",
        "Optional Chaining",
        "Failable Initializers",
        "Casting",
        "Class Methods",
        "Extensions",
        "Enumeration",
        "Error Handling",
        "Dictionaries",
        "Conditional Binding",
        "Protocols",
        "Inheritance",
        "Structs",
        "Enums",
        "Classes",
        "Subscripts",
        "Setter Observers"]

    var counter = 30
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "decTimer", userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func decTimer()
    {
        counter--
        counterLabel.text = "0:\(counter)"
        
        if(counter >= 10)
        {
            counterLabel.text = "0:\(counter)"
        }
        else
        {
            counterLabel.text = "0:0\(counter)"
        }
        
        if(counter == 0)
        {
            counter = 30
            counterLabel.text = "0:\(counter)"
            let rand = Int(arc4random_uniform(UInt32(topics.count)))
            topicLabel.text = topics[rand]
        }
        
    }

    @IBAction func onButtonPressed(sender: AnyObject)
    {
        counter = 30
        counterLabel.text = "0:\(counter)"
        let rand = Int(arc4random_uniform(UInt32(topics.count)))
        topicLabel.text = topics[rand]
    }
}

