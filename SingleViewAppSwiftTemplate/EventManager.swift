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
        
        //Put event in a var
        event1 = theEvent1.event
        
        //Put event year in a var
        event1Year = Int(theEvent1.year) ?? 0
        
        //Keeping track of the year location
        spot1 = event1Year
        
        //Display event in the text field
        labelNumber1.text = theEvent1.event
        
        let theEvent2 = randomEvent()
        event2 = theEvent2.event
        event2Year = Int(theEvent2.year) ?? 0
        spot2 = event2Year
        labelNumber2.text = theEvent2.event
        
        let theEvent3 = randomEvent()
        event3 = theEvent3.event
        event3Year = Int(theEvent3.year) ?? 0
        spot3 = event3Year
        labelNumber3.text = theEvent3.event
        
        let theEvent4 = randomEvent()
        event4 = theEvent4.event
        event4Year = Int(theEvent4.year) ?? 0
        spot4 = event4Year
        labelNumber4.text = theEvent4.event
        
        runTimer()
        updateTimer()
        
    }
    
    func textSwap(sender: UIButton) {
        switch (sender as AnyObject).tag {
        case 0:
            //Swapped text of label
            labelNumber1.text = event2
            labelNumber2.text = event1
            
            //Keep track of the year with the movement of events
            spot1 = event2Year
            spot2 = event1Year
            
            //Swapped Var to hold the new String
            (event1,event2) = (event2,event1)
            
            //Swapped var of Year to have year follow event
            (event1Year,event2Year) = (event2Year,event1Year)
            
        case 1:
            labelNumber2.text = event1
            labelNumber1.text = event2
            spot2 = event1Year
            spot1 = event2Year
            (event1,event2) = (event2,event1)
            (event1Year,event2Year) = (event2Year,event1Year)
        case 2:
            labelNumber2.text = event3
            labelNumber3.text = event2
            spot2 = event3Year
            spot3 = event2Year
            (event2,event3) = (event3,event2)
            (event2Year,event3Year) = (event3Year,event2Year)
        case 3:
            labelNumber2.text = event3
            labelNumber3.text = event2
            spot2 = event3Year
            spot3 = event2Year
            (event2,event3) = (event3,event2)
            (event2Year,event3Year) = (event3Year,event2Year)
        case 4:
            labelNumber3.text = event4
            labelNumber4.text = event3
            spot3 = event4Year
            spot4 = event3Year
            (event3,event4) = (event4,event3)
            (event3Year,event4Year) = (event4Year,event3Year)
        case 5:
            labelNumber3.text = event4
            labelNumber4.text = event3
            spot3 = event4Year
            spot4 = event3Year
            (event3,event4) = (event4,event3)
            (event3Year,event4Year) = (event4Year,event3Year)
        default:
            print("error")
        }
    }
    
    func eventOrderCheck() {
        if (spot1 < spot2) && (spot2 < spot3) && (spot3 < spot4) {
            shakeLabel.text = "Tap events to learn more"
            timer.isHidden = true
            successImage.isHidden = false
            points += 1
            loadNextRound(delay: 5)
        } else {
            shakeLabel.text = "Tap events to learn more"
            timer.isHidden = true
            failImage.isHidden = false
            loadNextRound(delay: 5)
            seconds = 11
        }
    }
    
    
    func loadNextRound(delay seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    func nextRound() {
        
        if round == numberOfRounds {
            // Game is over
            print("Send to the other screen showing the score")
        } else {
            // Continue game
            print("Play the next round")
            getAndDisplayEvent()
            successImage.isHidden = true
            failImage.isHidden = true
            timer.isHidden = false
            shakeLabel.text = "Shake to complete"
            round += 1
        }
    }
    
    
    
}


