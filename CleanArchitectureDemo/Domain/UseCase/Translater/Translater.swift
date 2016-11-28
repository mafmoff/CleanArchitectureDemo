//
//  Translater.swift
//  CleanArchitectureDemo
//
//  Created by Saika Yamamoto [NEXT] on 2016/11/28.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation
import RxSwift

protocol Translator {
    associatedtype Input
    associatedtype Output

    func translate(_: Input) throws -> Output
}

extension ObservableType {

    func map<T: Translator>(translator: T) -> Observable<T.Output> where Self.E == T.Input {

        return map { try translator.translate($0) }
    }

}
