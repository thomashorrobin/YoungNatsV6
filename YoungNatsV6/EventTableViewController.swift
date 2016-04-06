//
//  EventTableViewController.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 6/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    
    var events = [Event]()
    
    override func viewDidLoad() {
        print("Got here here")
        loadRestApi()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("eventReuseIdentifier", forIndexPath: indexPath) as! EventTableViewCell
        
        let event = events[indexPath.row]
        
        cell.Title.text = event.title
        cell.Date.text = event.date.description
        
        return cell
    }
    
    func loadRestApi(){
        let getEndpoint: String = "http://localhost:3000/events.json"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: getEndpoint)!
        let task = session.dataTaskWithURL(url, completionHandler: { ( data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            // Make sure we get an OK response
            guard let realResponse = response as? NSHTTPURLResponse where
                realResponse.statusCode == 200 else {
                    print("Not a 200 response")
                    return
            }
            
            // Read the JSON
            do {
                if let ipString = NSString(data:data!, encoding: NSUTF8StringEncoding) {
                    // Print what we got from the call
                    print(ipString)
                    
                    // Parse the JSON to get the IP
                    let jsonDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSArray
                    
                    for j in jsonDictionary {
                        self.events.append(Event(event: j as! NSDictionary))
                    }
                }
            } catch {
                print("bad things happened")
            }
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.tableView.reloadData()
            })
        })
        
        task.resume()
    }

}
