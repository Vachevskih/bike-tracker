//
//  StopwatchController.swift
//  bike-tracker
//
//  Created by Vladimir Benkevich on 16/09/2017.
//  Copyright © 2017 ibuka. All rights reserved.
//

import Foundation
import UIKit

class StopwatchController: UIViewController {
    
    var currentState: IStopwatchScreenState! {
        didSet {
            startButton.isHidden = !(currentState.startButtonVisible)
            pauseButton.isHidden = !(currentState.pauseButtonVisible)
            continueButton.isHidden = !(currentState.continueButtonVisible)
            stopButton.isHidden = !(currentState.stopButtonVisible)
        }
    }
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentState = StopwatchScreenState.none
    }
    
    @IBAction func handleStartButton(_ sender: Any) {
       currentState = StopwatchScreenState.cycling
    }
    
    @IBAction func handlePauseButton(_ sender: Any) {
        currentState = StopwatchScreenState.paused
    }
    
    @IBAction func handleContinueButton(_ sender: Any) {
        currentState = StopwatchScreenState.cycling
    }
    
    @IBAction func handleStopButton(_ sender: Any) {
        currentState = StopwatchScreenState.none
    }
    
}
