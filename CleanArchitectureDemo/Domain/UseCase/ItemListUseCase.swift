//
//  ItemListUseCase.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import RxSwift

/// Interface
protocol ItemListUseCase {
    
    mutating func loadItemList() -> Observable<ItemListModel>
    func setCondition()
    func fetchCondition() -> Parameterizable
}

struct ItemListUseCaseImpl: ItemListUseCase {

    private var itemListRepository: ItemListRepository

    init(itemListRepository: ItemListRepository) {

        self.itemListRepository = itemListRepository
    }

    mutating func loadItemList() -> Observable<ItemListModel> {

        return itemListRepository.requestItemList(parameter: fetchCondition())
            .map(translator: ItemListTranslator())
    }

    func setCondition() {

        // 検索条件を保存
    }

    func fetchCondition() -> Parameterizable {

        // 検索条件を取得
        return
    }

}
