//
//  TimelineModel.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

struct TimelineModel {
    
    var list = [TimelineModel]()
}

struct EntryModel: TimelineViewModel {

    // FIXME: 一旦適当
    let title: String
    let link: NSURL
    var publishedDate: Date
    
    init(entity: EntryEntity) {
        title = entity.title
        link = entity.link
        publishedDate = entity.publishedDate
    }
}
