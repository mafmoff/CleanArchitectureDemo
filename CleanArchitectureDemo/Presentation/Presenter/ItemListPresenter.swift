//
//  ItemListPresenter.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/28.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

protocol ItemListPresenter {
    
    func loadItemList()
//    func selectCell()
}

class HomeItemListPresenterImpl: ItemListPresenter {
    
    let wireframe: ItemListWireframe
    var useCase: ItemListUseCase
    var viewInput: ItemListViewInput?
    
    init(wireframe: ItemListWireframe, useCase: ItemListUseCase, viewInput: ItemListViewInput) {
        
        self.wireframe = wireframe
        self.useCase = useCase
        self.viewInput = viewInput
    }
    
    func loadItemList() {
        
//        useCase.loadItemList(parameter: <#T##Parameterizable#>)
    }
    
}
