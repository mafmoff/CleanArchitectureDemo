//
//  ItemListDataStore.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import RxSwift
import Alamofire

protocol ItemListDataStore {
    
    mutating func getItemList(parameter: Parameterizable) -> Observable<[EntryEntity]>
}

struct ItemListDataStoreImpl: ItemListDataStore, Requestable {
    
    var request: DataRequest?
    
    let urlString = ""

    mutating func getItemList(parameter: Parameterizable) -> Observable<[EntryEntity]> {

        request = Alamofire.request(urlString,
                                    method: .get,
                                    parameters: parameter.toJSON(),
                                    encoding: JSONEncoding.default,
                                    headers: [:])
        return connect()
    }
}
