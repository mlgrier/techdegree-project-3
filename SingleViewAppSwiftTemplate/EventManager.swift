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


let events = [
    HistoricalEvents(event: "Slavery comes to North America", year: "1619"),
    HistoricalEvents(event: "Rise of the cotton industry", year: "1793"),
    HistoricalEvents(event: "Nat Turner’s Revolt", year: "1831"),
    HistoricalEvents(event: "Abolitionism and the Underground Railroad", year: "1831"),
    HistoricalEvents(event: "Dred Scott case", year: "1857"),
    HistoricalEvents(event: "John Brown’s raid", year: "1859"),
    HistoricalEvents(event: "Civil War and emancipation", year: "1861"),
    HistoricalEvents(event: "The Post–Slavery South", year: "1865"),
    HistoricalEvents(event: "Separate But Equal", year: "1896"),
    HistoricalEvents(event: "NAACP founded", year: "1909"),
    HistoricalEvents(event: "Harlem Renaissance", year: "1920"),
    HistoricalEvents(event: "African–Americans in WWII", year: "1941"),
    HistoricalEvents(event: "Brown v. Board Of Education", year: "1954"),
    HistoricalEvents(event: "Emmett Till", year: "1955"),
    HistoricalEvents(event: "Rosa Parks and the Montgomery Bus Boycott", year: "1955"),
    HistoricalEvents(event: "Central High School integrated", year: "1957"),
    HistoricalEvents(event: "CORE and Freedom Rides", year: "1961"),
    HistoricalEvents(event: "Integration of Ole Miss", year: "1962"),
    HistoricalEvents(event: "I Have a Dream Speech", year: "1963"),
    HistoricalEvents(event: "Civil Rights Act", year: "1964"),
    HistoricalEvents(event: "Selma to Montgomery", year: "1965"),
    HistoricalEvents(event: "MLK Assassinated", year: "1968"),
    HistoricalEvents(event: "Shirley Chisholm Runs for President", year: "1972"),
    HistoricalEvents(event: "The Bakke decision and affirmative action", year: "1978"),
    HistoricalEvents(event: "Oprah Winfrey launches syndicated talk show", year: "1986"),
    HistoricalEvents(event: "Los Angeles riots", year: "1992"),
    HistoricalEvents(event: "Million Man March", year: "1995"),
    HistoricalEvents(event: "Barack Obama becomes 44th U.S. president", year: "2008")
]


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


//func showRandomEvent() {
//    let indexOfEvent = randomEvent()
//    let pickedEvent = events[indexOfEvent]
//    questionField.text = 
//}




