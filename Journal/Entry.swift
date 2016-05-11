//
//  Entry.swift
//  Journal
//
//  Created by Chad Watts on 5/11/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    var timeStamp: NSDate
    var title: String
    var bodyText: String
    
    init(timeStamp: NSDate = NSDate(), title: String, bodyText: String) {
        self.timeStamp = NSDate()
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timeStamp == rhs.timeStamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
    
}
