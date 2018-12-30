//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    // Struct for the events
    let historicalEvents = HistoricalEvents()
    
    var indexOfSelectedQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.layer.cornerRadius = 44

    }

    func randomlyPopulateEvents() {
        let indexOfQuestion = randomNumber()
        let questionDictionary = historicalEvents.events[indexOfQuestion]
        questionField.text = questionDictionary["Event"]
    }
    
    func randomNumber() -> Int {
        // Loop to check if index has been used
        repeat {
            indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: historicalEvents.events.count)
        } while arrayOfIndex.contains(indexOfSelectedQuestion)
        // Add index to array
        arrayOfIndex.append(indexOfSelectedQuestion)
        
        return indexOfSelectedQuestion
    }


}

