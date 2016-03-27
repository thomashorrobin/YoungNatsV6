//
//  Individual.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 26/03/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class Individual {
    
    var uuid: NSUUID
    var first_name: String
    var last_name: String
    var full_name: String
    
    init(first_name: String, last_name: String){
        self.uuid = NSUUID()
        self.first_name = first_name
        self.last_name = last_name
        self.full_name = first_name + " " + last_name
    }
    
    init(individual: NSDictionary){
        self.uuid = NSUUID(UUIDString: (individual["Uid"] as! String))!
        self.first_name = individual["first_name"] as! String!
        self.last_name = individual["last_name"] as! String!
        self.full_name = individual["full_name"] as! String!
    }
    
}