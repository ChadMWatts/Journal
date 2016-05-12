//
//  Entry.swift
//  Journal
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    private let kTimeStamp = "timeStamp"
    private let kTitle = "title"
    private let kBodyText = "bodyText"
    
    var timeStamp: NSDate
    var title: String
    var bodyText: String
    
    var dictionaryCopy: [String:AnyObject] {
        return [kTimeStamp: timeStamp, kTitle: title, kBodyText: bodyText]
    }
    
    init(timeStamp: NSDate = NSDate(), title: String, bodyText: String) {
        self.timeStamp = NSDate()
        self.title = title
        self.bodyText = bodyText
    }
    
    init?(dictionary: [String:AnyObject]) {
        guard let timeStamp = dictionary[kTimeStamp] as? NSDate,
        title = dictionary[kTitle] as? String,
            bodyText = dictionary[kBodyText] as? String else {
                
                self.timeStamp = NSDate()
                self.title = ""
                self.bodyText = ""
                
                return nil
        }
        
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timeStamp == rhs.timeStamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
    
}
