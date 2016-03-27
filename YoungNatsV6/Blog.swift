//
//  Blog.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 26/03/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class Blog {
    
    var uuid: NSUUID
    var name: String
    
    init(name: String){
        self.uuid = NSUUID()
        self.name = name
    }
    
    init(blog: NSDictionary){
        self.uuid = NSUUID(UUIDString: (blog["Uid"] as! String))!
        self.name = blog["Name"] as! String!
    }
    
}