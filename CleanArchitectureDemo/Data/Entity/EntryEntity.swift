//
//  EntryEntity.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation
import ObjectMapper

struct EntryEntity: Responsible {
    
    /// title
    var title = ""
    
    /// link
    var link = NSURL()
    
    /// piblished date
    var publishedDate = Date()
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        title <- map["title"]
        link <- map["link"]
        publishedDate <- (map["publishedDate"], DateTransform())
    }
}
