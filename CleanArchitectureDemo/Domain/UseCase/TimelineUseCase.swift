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
    
    mutating func loadTimeline(parameter: Parameterizable) -> Observable<TimelineModel>
}

struct TimelineUseCaseImplementation: TimelineUseCase {
    private var timelineRepository: TimelineRepository

    init(timelineRepository: TimelineRepository) {

        self.timelineRepository = timelineRepository
    }

    mutating func loadTimeline(parameter: Parameterizable) -> Observable<TimelineModel> {

        return timelineRepository.requestTimeline(parameter: parameter).map(translator: TimelineTranslator())
    }
}
