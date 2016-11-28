//
//  TimelineDataStore.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import RxSwift
import Alamofire

protocol TimelineDataStore {
    
    mutating func getTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]>
}

struct TimelineDataStoreImpl: TimelineDataStore, Requestable {
    
    var request: DataRequest?
    
    let urlString = ""

    mutating func getTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]> {

        request = Alamofire.request(urlString,
                                    method: .get,
                                    parameters: parameter.toJSON(),
                                    encoding: JSONEncoding.default,
                                    headers: [:])
        return connect()
    }
}
