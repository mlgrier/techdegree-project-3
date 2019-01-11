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
    
    func getAndDisplayEvent() {
        
        let theEvent1 = randomEvent()
        event1 = theEvent1.event
        event1Year = theEvent1.year
        labelNumber1.text = theEvent1.event
        
        let theEvent2 = randomEvent()
        event2 = theEvent2.event
        event2Year = theEvent2.year
        labelNumber2.text = theEvent2.event
        
        let theEvent3 = randomEvent()
        event3 = theEvent3.event
        event3Year = theEvent3.year
        labelNumber3.text = theEvent3.event
        
        let theEvent4 = randomEvent()
        event4 = theEvent4.event
        event4Year = theEvent4.year
        labelNumber4.text = theEvent4.event
        
        block1 = event1Year
        block2 = event2Year
        block3 = event3Year
        block4 = event4Year
        
        print(block1)
        print(block2)
        print(block3)
        print(block4)
        
    }
    
    
    func textSwap(sender: UIButton) {
        switch (sender as AnyObject).tag {
        case 0:
            //Swapped text of label
            labelNumber1.text = event2
            labelNumber2.text = event1
            
            block1 = event2Year
            block2 = event1Year
            
            //Swapped Var to hold the new String
            (event1,event2) = (event2,event1)
            
            //Swapped var of Year to have year follow event
            (event1Year,event2Year) = (event2Year,event1Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        case 1:
            labelNumber2.text = event1
            labelNumber1.text = event2
            block2 = event1Year
            block1 = event2Year
            (event1,event2) = (event2,event1)
            (event1Year,event2Year) = (event2Year,event1Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        case 2:
            labelNumber2.text = event3
            labelNumber3.text = event2
            block2 = event3Year
            block3 = event2Year
            (event2,event3) = (event3,event2)
            (event2Year,event3Year) = (event3Year,event2Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        case 3:
            labelNumber2.text = event3
            labelNumber3.text = event2
            block2 = event3Year
            block3 = event2Year
            (event2,event3) = (event3,event2)
            (event2Year,event3Year) = (event3Year,event2Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        case 4:
            labelNumber3.text = event4
            labelNumber4.text = event3
            block3 = event4Year
            block4 = event3Year
            (event3,event4) = (event4,event3)
            (event3Year,event4Year) = (event4Year,event3Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        case 5:
            labelNumber3.text = event4
            labelNumber4.text = event3
            block3 = event4Year
            block4 = event3Year
            (event3,event4) = (event4,event3)
            (event3Year,event4Year) = (event4Year,event3Year)
            
            print(block1)
            print(block2)
            print(block3)
            print(block4)
        default:
            print("error")
        }
    }
    
}


