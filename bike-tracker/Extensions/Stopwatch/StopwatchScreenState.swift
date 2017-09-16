//
//  StopwatchScreenState.swift
//  bike-tracker
//
//  Created by Vladimir Benkevich on 16/09/2017.
//  Copyright © 2017 ibuka. All rights reserved.
//

import Foundation

protocol IStopwatchScreenState {
    
    var startButtonVisible: Bool { get }
    
    var stopButtonVisible: Bool { get }
    
    var continueButtonVisible: Bool { get }
    
    var pauseButtonVisible: Bool { get }
}

struct StopwatchScreenState: IStopwatchScreenState {
    
    static let none: IStopwatchScreenState = StopwatchScreenState(
        startButtonVisible: true,
        stopButtonVisible: false,
        continueButtonVisible: false,
        pauseButtonVisible: false)
    
    static let cycling: IStopwatchScreenState = StopwatchScreenState(
        startButtonVisible: false,
        stopButtonVisible: false,
        continueButtonVisible: false,
        pauseButtonVisible: true)
    
    static let paused: IStopwatchScreenState = StopwatchScreenState(
        startButtonVisible: false,
        stopButtonVisible: true,
        continueButtonVisible: true,
        pauseButtonVisible: false)
    
    let startButtonVisible: Bool
    
    let stopButtonVisible: Bool
    
    let continueButtonVisible: Bool
    
    let pauseButtonVisible: Bool
}

let borderDate = Date()

struct EveringStopwatchState: IStopwatchScreenState {
    
    var startButtonVisible: Bool {
        if Date() > borderDate {
            return false
        }
        return true
    }
    
    let stopButtonVisible: Bool
    
    let continueButtonVisible: Bool
    
    let pauseButtonVisible: Bool
}
