//
//  ViewController.swift
//  MydaysApp
//
//  Created by Роман on 10.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var returnInfoLabel: UILabel!
    @IBOutlet weak var returnResultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        returnResultButton.layer.cornerRadius = 12
    }

    @IBAction func UIInputDateInfo(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        numberOfDays.removeLast(5)  // Строка необходимая для удаления стандартного "Days"
        
    }
    @IBAction func ReturnResultButtonTapped() {
        
        returnInfoLabel.text = "Ты живешь уже \(numberOfDays) дней"
        
    }
    
}

