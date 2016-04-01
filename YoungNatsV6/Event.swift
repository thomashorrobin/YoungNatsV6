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
    
    init(title: String){
        self.title = title
    }
    
    init(event: NSDictionary){
        self.title = event["title"] as! String!
    }
    
}