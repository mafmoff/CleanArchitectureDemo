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

struct TimelineDataStoreImplementation: TimelineDataStore {
    
    let request = Alamofire.request(<#T##url: URLConvertible##URLConvertible#>,
                                    method: <#T##HTTPMethod#>,
                                    parameters: <#T##Parameters?#>,
                                    encoding: <#T##ParameterEncoding#>,
                                    headers: <#T##HTTPHeaders?#>)
    
    func getTimeline(parameter: Parameterizable) -> Observable<[EntryEntity]> {
        
        return
    }
}
