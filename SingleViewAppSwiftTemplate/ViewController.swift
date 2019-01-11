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
    
    var event1Year = ""
    var event2Year = ""
    var event3Year = ""
    var event4Year = ""
    
    var block1 = ""
    var block2 = ""
    var block3 = ""
    var block4 = ""
    
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
        
        getAndDisplayEvent()
        
    }
    
    
    @IBAction func upDownButtonPushed(_ sender: UIButton) {
        let buttonPushed = sender
        textSwap(sender: buttonPushed)
    }
    
//    func eventOrderCheck() {
//        
//        
//    }
    
    
}

