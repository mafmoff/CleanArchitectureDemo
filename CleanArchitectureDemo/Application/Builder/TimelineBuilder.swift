//
//  TimelineBuilder.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import UIKit

/// HomeTimeline Builder
struct HomeTimelineBuilder {
    
    func build() -> UIViewController? {
        
        let wireframe = HomeTimelineWireframeImpl()
        let viewController = UIStoryboard(name: "mail", bundle: nil)
            .instantiateViewController(withIdentifier: "Timeline") as? TimelineViewController
        
        
        return viewController
    }
}
