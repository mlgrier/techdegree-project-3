//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var event1 = ""
    var event2 = ""
    var event3 = ""
    var event4 = ""
    
    @IBOutlet weak var upButton1: UIButton!
    @IBOutlet weak var upButton2: UIButton!
    @IBOutlet weak var upButton3: UIButton!
    
    @IBOutlet weak var downButton1: UIButton!
    @IBOutlet weak var downButton2: UIButton!
    @IBOutlet weak var downButton3: UIButton!
    
    @IBOutlet weak var labelNumber1: UILabel!
    @IBOutlet weak var labelNumber2: UILabel!
    @IBOutlet weak var labelNumber3: UILabel!
    @IBOutlet weak var labelNumber4: UILabel!
    
    @IBOutlet weak var timer: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.layer.cornerRadius = 44
        
        displayEvent()
        
    }
    
    func displayEvent() {
        
        let theEvent1 = randomEvent()
        event1 = theEvent1.event
        labelNumber1.text = theEvent1.event
        
        let theEvent2 = randomEvent()
        event2 = theEvent2.event
        labelNumber2.text = theEvent2.event
        
        let theEvent3 = randomEvent()
        event3 = theEvent3.event
        labelNumber3.text = theEvent3.event
        
        let theEvent4 = randomEvent()
        event4 = theEvent4.event
        labelNumber4.text = theEvent4.event
        
    }
    
    @IBAction func upDownButtonPushed(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 0:
            labelNumber1.text = event2
            labelNumber2.text = event1
            event1 = event2
            event2 = event1
            print("tag 0")
        case 1:
            labelNumber2.text = event1
            labelNumber1.text = event2
            event1 = event2
            event2 = event1
            print("tag 1")
        case 2:
            labelNumber2.text = event3
            labelNumber3.text = event2
            event2 = event3
            event3 = event2
            print("tag 2")
        case 3:
            labelNumber2.text = event3
            labelNumber3.text = event2
            event2 = event3
            event3 = event2
            print("tag 3")
        case 4:
            labelNumber3.text = event4
            labelNumber4.text = event3
            event3 = event4
            event4 = event3
            print("tag 4")
        case 5:
            labelNumber3.text = event4
            labelNumber4.text = event3
            event3 = event4
            event4 = event3
            print("tag 5")
        default:
            print("error")
        }
    }
    
    
}

