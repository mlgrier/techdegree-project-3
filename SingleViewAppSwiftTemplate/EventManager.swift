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



