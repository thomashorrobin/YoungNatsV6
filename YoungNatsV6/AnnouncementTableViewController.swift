//
//  AnnouncementTableViewController.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 1/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import UIKit

class AnnouncementTableViewController: UITableViewController {
    
    var announcements = [Announcement]()
    
    override func viewDidLoad() {
        loadRestApi()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return announcements.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("announcementReuseIdentifier", forIndexPath: indexPath) as! AnnouncementTableViewCell
        
        let announcement = announcements[indexPath.row]
        
        cell.Message.text = announcement.message
        cell.ExecName.text = announcement.exec_name
        
        return cell
    }
    
    func loadRestApi(){
        let getEndpoint: String = "http://159.203.172.190/announcements.json"
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
                        self.announcements.append(Announcement(announcement: j as! NSDictionary))
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
