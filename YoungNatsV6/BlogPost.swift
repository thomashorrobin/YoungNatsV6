//
//  BlogPost.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 26/03/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class BlogPost {
    
    var blog_name: String
    var title: String
    var content: String
    
    init(blog_name: String, title: String, content: String){
        self.blog_name = blog_name
        self.title = title
        self.content = content
    }
    
    init(blogpost: NSDictionary){
        self.blog_name = blogpost["blog_post"] as! String
        self.title = blogpost["title"] as! String
        self.content = blogpost["content"] as! String
    }
    
}
