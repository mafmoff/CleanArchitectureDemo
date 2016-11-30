//
//  ItemListBuilder.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import UIKit

/// HomeItemList Builder
struct HomeItemListBuilder {
    
    func build() -> UIViewController? {

        guard let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ItemList") as? ItemListViewController else {
                return nil
        }
        let wireframe = HomeItemListWireframeImpl()
        let useCase = ItemListUseCaseImpl(itemListRepository: ItemListRepositoryImpl(dataStore: ItemListDataStoreImpl()))
        let presenter = HomeItemListPresenterImpl(wireframe: wireframe, useCase: useCase, viewInput: viewController)

        viewController.inject(presenter: presenter)
        wireframe.viewController = viewController

        return viewController
    }
}
