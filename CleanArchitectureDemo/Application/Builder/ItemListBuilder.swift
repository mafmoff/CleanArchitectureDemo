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
        
        let wireframe = HomeItemListWireframeImpl()
        let viewController = UIStoryboard(name: "mail", bundle: nil)
            .instantiateViewController(withIdentifier: "ItemList") as? ItemListViewController
        
        
        return viewController
    }
}
