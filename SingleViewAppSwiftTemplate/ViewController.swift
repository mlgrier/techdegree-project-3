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
    
    var event1Year = 0
    var event2Year = 0
    var event3Year = 0
    var event4Year = 0
    
    var spot1 = 0
    var spot2 = 0
    var spot3 = 0
    var spot4 = 0
    
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
    @IBOutlet weak var shakeLabel: UILabel!
    
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var failImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.layer.cornerRadius = 44
        
        successImage.isHidden = true
        failImage.isHidden = true
        getAndDisplayEvent()
        
    }
    
    @IBAction func upDownButtonPushed(_ sender: UIButton) {
        let buttonPushed = sender
        textSwap(sender: buttonPushed)
    }

    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        eventOrderCheck()
    }
    
}

