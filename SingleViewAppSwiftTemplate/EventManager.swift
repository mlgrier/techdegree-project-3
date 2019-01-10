//
//  EventManager.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Marco Grier on 12/30/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import GameKit


var arrayOfIndex = [Int]()


struct HistoricalEvents {
    let event: String
    let year: String
}


var event = HistoricalEvents(event: "", year: "")


func randomEvent() -> HistoricalEvents {
    
    var indexOfSelectedQuestion = 0
    let yearAnswer: String
    let eventQuestion: String
    
    // Loop to check if index has been used
    repeat {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: events.count)
    } while arrayOfIndex.contains(indexOfSelectedQuestion)
    
    // Add index to array
    arrayOfIndex.append(indexOfSelectedQuestion)
    
    eventQuestion = events[indexOfSelectedQuestion].event
    yearAnswer = events[indexOfSelectedQuestion].year
    
    event = HistoricalEvents(event: eventQuestion, year: yearAnswer)
    
    return event
}

extension ViewController {
    
    func textSwap(sender: UIButton) {
        switch (sender as AnyObject).tag {
        case 0:
            //Swapped text of label
            labelNumber1.text = event2
            labelNumber2.text = event1
            //Swapped Var to hold the new String
            (event1,event2) = (event2,event1)
        case 1:
            labelNumber2.text = event1
            labelNumber1.text = event2
            (event1,event2) = (event2,event1)
        case 2:
            labelNumber2.text = event3
            labelNumber3.text = event2
            (event2,event3) = (event3,event2)
        case 3:
            labelNumber2.text = event3
            labelNumber3.text = event2
            (event2,event3) = (event3,event2)
        case 4:
            labelNumber3.text = event4
            labelNumber4.text = event3
            (event3,event4) = (event4,event3)
        case 5:
            labelNumber3.text = event4
            labelNumber4.text = event3
            (event3,event4) = (event4,event3)
        default:
            print("error")
        }
    }
    
}


