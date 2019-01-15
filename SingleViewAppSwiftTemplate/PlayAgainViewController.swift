//
//  PlayAgainViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Marco Grier on 1/13/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import UIKit

class PlayAgainViewController: UIViewController {
    
    var thePoints = 0
    var theNumberOfRounds = 0
    
    //let vc = ViewController()

    @IBOutlet weak var yourScoreText: UILabel!
    @IBOutlet weak var theScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        theScore.text = "\(thePoints) / \(theNumberOfRounds)"
    }

    @IBAction func playAgainButton(_ sender: Any) {
        // Move to the score page and pass var with the code below
        let next2 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(next2, animated: true, completion: nil)
    }
    
}
