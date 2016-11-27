//
//  TimelineUseCase.swift
//  CleanArchitectureDemo
//
//  Created by SaikaYamamoto on 2016/11/27.
//  Copyright © 2016年 mafmoff. All rights reserved.
//

import RxSwift

/// Interface
protocol TimelineUseCase {
    
//    func loadTimeline() -> Observable<TimelineModel>
}

struct TimelineUseCaseImplementation: TimelineUseCase {
    private let timelineRepository: TimelineRepository
    
}
