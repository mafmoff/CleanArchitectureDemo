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
    
    func connect<T: Responsible>() -> Observable<T>
    func connect<T: Responsible>() -> Observable<[T]>
}

extension Requestable {
    
    func connect<T: Responsible>() -> Observable<T> {
        
        return Observable.create { (observer: AnyObserver<T>) in
        
            self.request?.responseJSON { response in
                
                switch response.result {
                case .success(let value):
                    
                    if let mapper = Mapper<T>().map(JSONObject: value) {
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

    func connect<T: Responsible>() -> Observable<[T]> {
        
        return Observable.create { (observer: AnyObserver<[T]>) in
            
            self.request?.responseJSON { response in
                
                switch response.result {
                    
                case .success(let value):
                    
                    if let mapper = Mapper<T>().mapArray(JSONObject: value) {
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
