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
        labelNumber1.text = theEvent1.event
        event1 = theEvent1.event
        
        let theEvent2 = randomEvent()
        labelNumber2.text = theEvent2.event
        event2 = theEvent2.event
        
        let theEvent3 = randomEvent()
        labelNumber3.text = theEvent3.event
        event3 = theEvent3.event
        
        let theEvent4 = randomEvent()
        labelNumber4.text = theEvent4.event
        event4 = theEvent4.event
        
    }
    
    @IBAction func upButton(_ sender: UIButton) {
        //if sender.tag == 
    }
    
    @IBAction func downButton(_ sender: UIButton) {
    }
    
}

