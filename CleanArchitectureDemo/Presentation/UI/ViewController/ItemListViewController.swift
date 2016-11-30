//
//  ItemListViewController.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import UIKit

protocol ItemListViewInput: class {
    
}

class ItemListViewController: UIViewController {

    var presenter: ItemListPresenter?

    func inject(presenter: ItemListPresenter) {

        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.loadItemList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ItemListViewController: ItemListViewInput {
    
}
