//
//  ViewController.swift
//  Homework_2.1.2
//
//  Created by Dmitriy Kamenkov on 19.08.2020.
//  Copyright © 2020 Dmitriy Kamenkov. All rights reserved.
//

import UIKit

enum TraficSignalLigth {
    case red, yellow, grenn
}

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var redLigthView: UIView!
    @IBOutlet var yellowLigthView: UIView!
    @IBOutlet var greenLigthView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    // MARK: - Private Properties
    private var momentligth = TraficSignalLigth.red
    private let ligthOn: CGFloat = 1
    private let ligthOff: CGFloat = 0.3
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLigthView.alpha = ligthOff
        redLigthView.layer.cornerRadius = redLigthView.frame.height / 2
        yellowLigthView.alpha = ligthOff
        yellowLigthView.layer.cornerRadius = yellowLigthView.frame.height / 2
        greenLigthView.alpha = ligthOff
        greenLigthView.layer.cornerRadius = greenLigthView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }
    
    // MARK: - IB Action
    @IBAction func changeLigthButtonPressed() {
        
        startButton.setTitle("Next", for: .normal)
        
        switch momentligth {
            
        case .red:
            redLigthView.alpha = ligthOn
            greenLigthView.alpha = ligthOff
            momentligth = .yellow
        case .yellow:
            yellowLigthView.alpha = ligthOn
            redLigthView.alpha = ligthOff
            momentligth = .grenn
        case .grenn:
            greenLigthView.alpha = ligthOn
            yellowLigthView.alpha = ligthOff
            momentligth = .red
        }
        
    }
    
}

