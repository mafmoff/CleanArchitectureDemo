//
//  TimelineRepository.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation
import RxSwift

protocol TimelineRepository {

    // FIXME: 後でパラメータを厳格に指定する
    mutating func requestTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]>
}

struct TimelineRepositoryImplementation: TimelineRepository {
    
    private var dataStore: TimelineDataStore

    init(dataStore: TimelineDataStore) {

        self.dataStore = dataStore
    }

    mutating func requestTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]> {
        
        return dataStore.getTimeline(parameter: parameter)
    }
}
