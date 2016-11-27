//
//  DetailWireFrame.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

/// Detail Wireframe
protocol DetailWireframe: class {
    
    var viewController: DetailViewController? { get set }
    
    func pop()
}

class DetailWireframeImplementation: DetailWireframe {
    
    var viewController: DetailViewController?
    
    func pop() {
        
        _ = viewController?.navigationController?.popViewController(animated: true)
    }
}
