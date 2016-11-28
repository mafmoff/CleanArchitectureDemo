//
//  TimelinePresenter.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/28.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import Foundation

protocol TimelinePresenter {
    
    func loadTimeline()
//    func selectCell()
}

class HomeTimelinePresenterImpl: TimelinePresenter {
    
    let wireframe: TimelineWireframe
    var useCase: TimelineUseCase
    var viewInput: TimelineInput?
    
    init(wireframe: TimelineWireframe, useCase: TimelineUseCase, viewInput: TimelineInput) {
        
        self.wireframe = wireframe
        self.useCase = useCase
        self.viewInput = viewInput
    }
    
    func loadTimeline() {
        
//        useCase.loadTimeline(parameter: <#T##Parameterizable#>)
    }
    
}
