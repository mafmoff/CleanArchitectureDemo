//
//  TimelineTranslater.swift
//  CleanArchitectureDemo
//
//  Created by Saika Yamamoto [NEXT] on 2016/11/28.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

struct TimelineTranslator: Translator {

    typealias Input = [EntryEntity]
    typealias Output = TimelineModel

    func translate(_ entries: [EntryEntity]) throws -> TimelineModel {

        var model = TimelineModel()
        model.list = entries.map { EntryModel.init(entity: $0) }
        return model
    }
}
