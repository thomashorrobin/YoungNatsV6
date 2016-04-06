//
//  Event.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 1/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//
import Foundation


class Event {
    
    var title: String
    var date: NSDate
    
    init(title: String, date: NSDate){
        self.title = title
        self.date = date
    }
    
    init(event: NSDictionary){
        self.title = event["title"] as! String!
        self.date = NSDate()
    }
    
}