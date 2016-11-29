//
//  ItemListWireframe.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

/// ItemList Wireframe
protocol ItemListWireframe: class {
    
    var viewController: ItemListViewController? { get set }
    
    func showItemList()
    func showDetail()
}

class HomeItemListWireframeImpl: ItemListWireframe {
    
    var viewController: ItemListViewController?
    
    func showItemList() {
        // 画面遷移的なものをコードで
    }
    
    func showDetail() {
        // 画面遷移的な
    }
}

class FeatureItemListWireframeImpl: ItemListWireframe {
    
    var viewController: ItemListViewController?
    
    func showItemList() {
        
    }
    
    func showDetail() {
        
    }
}
