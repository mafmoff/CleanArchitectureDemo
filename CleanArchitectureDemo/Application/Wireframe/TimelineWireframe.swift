//
//  TimelineWireframe.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

/// Timeline Wireframe
protocol TimelineWireframe: class {
    
    var viewController: TimelineViewController? { get set }
    
    func showTimeline()
    func showDetail()
}

class HomeTimelineWireframeImpl: TimelineWireframe {
    
    var viewController: TimelineViewController?
    
    func showTimeline() {
        // 画面遷移的なものをコードで
    }
    
    func showDetail() {
        // 画面遷移的な
    }
}

class FeatureTimelineWireframeImpl: TimelineWireframe {
    
    var viewController: TimelineViewController?
    
    func showTimeline() {
        
    }
    
    func showDetail() {
        
    }
}
