//
//  ItemListRepository.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation
import RxSwift

protocol ItemListRepository {

    // FIXME: 後でパラメータを厳格に指定する
    mutating func requestItemList(parameter: Parameterizable) -> Observable<[EntryEntity]>
}

struct ItemListRepositoryImpl: ItemListRepository {
    
    private var dataStore: ItemListDataStore

    init(dataStore: ItemListDataStore) {

        self.dataStore = dataStore
    }

    mutating func requestItemList(parameter: Parameterizable) -> Observable<[EntryEntity]> {
        
        return dataStore.getItemList(parameter: parameter)
    }
}
