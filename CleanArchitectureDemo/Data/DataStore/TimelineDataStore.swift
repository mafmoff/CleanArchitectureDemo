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
    
    func getTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]>
}

struct TimelineDataStoreImplementation: TimelineDataStore, Requestable {
    
    var request: DataRequest?
    
    let path = NSURL(string: "")

    func getTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]> {
    
//        request = Alamofire.request(path,
//                                         method: .get,
//                                         parameters: parameter.toJSON(),
//                                         encoding: .url,
//                                         headers: nil)

        return connect(parameter: parameter)
    }
}
