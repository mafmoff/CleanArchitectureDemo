//
//  Requestable.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Alamofire
import RxSwift
import ObjectMapper

protocol Requestable {
    
    var request: DataRequest? { get set }
    
    func request(parameter: Parameterizable)
}

extension Requestable {
    
    func request<T: Responsible>(parameter: Parameterizable) -> Observable<T> {
        
        return Observable.create { (observer: AnyObserver<T>) in
        
            self.request?.responseJSON { response in
                
                switch response.result {
                case .success(let value):
                    
                    if
                    let json = value as? [String: Any],
                        let mapper = Mapper<T>().map(JSON: json) {
                        observer.onNext(mapper)
                        observer.onCompleted()
                    }
                case .failure(let error):
                    observer.onError(error)
                }
            }

            return Disposables.create() {
                
            }
        }
    }
}
