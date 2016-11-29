//
//  ItemListTranslater.swift
//  CleanArchitectureDemo
//
//  Created by Saika Yamamoto [NEXT] on 2016/11/28.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

struct ItemListTranslator: Translator {

    typealias Input = [EntryEntity]
    typealias Output = ItemListModel

    func translate(_ entries: [EntryEntity]) throws -> ItemListModel {

        var model = ItemListModel()
        model.list = entries.map { EntryModel.init(entity: $0) }
        return model
    }
}
