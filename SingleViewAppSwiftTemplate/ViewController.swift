//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
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
    }
    
    @IBAction func upButton(_ sender: UIButton) {
    }
    
    @IBAction func downButton(_ sender: UIButton) {
    }
    
}

