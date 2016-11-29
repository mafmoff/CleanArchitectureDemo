//
//  ItemListModel.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

struct ItemListModel {
    
    var list = [EntryModel]()
}

struct EntryModel: ItemListViewModel {

    // FIXME: 一旦適当
    let title: String
    let link: NSURL
    var publishedDate: Date
    let test = "test"

    init(entity: EntryEntity) {
        title = entity.title
        link = entity.link
        publishedDate = entity.publishedDate
    }
}
