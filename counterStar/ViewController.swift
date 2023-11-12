//
//  ViewController.swift
//  counterStar
//
//  Created by Admin on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    private var formatedDate = DateFormatter()
    private var countNumber: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatedDate.dateFormat = "dd.MM.YYYY HH:mm:ss"
        counterLabel.text = "\(countNumber)"
        historyTextView.text = "История изменений: \n"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        formatedDate.dateFormat = "dd.MM.YYYY HH:mm:ss"
        let timeString = formatedDate.string(from: Date())

        countNumber -= 1
        if countNumber < 0 {
            countNumber = 0
            historyTextView.text += "\(timeString):значение не изменено \n"
        } else {
            counterLabel.text = "\(countNumber)"
            historyTextView.text += "\(timeString):значение изменено на -1 \n"}
    }
    
    @IBAction func plusButton(_ sender: Any) {
        formatedDate.dateFormat = "dd.MM.YYYY HH:mm:ss"
        let timeString = formatedDate.string(from: Date())

        countNumber += 1
        counterLabel.text = "\(countNumber)"
        historyTextView.text += "\(timeString):значение изменено на +1 \n"
    }
    
    @IBAction func clearButton(_ sender: Any) {
        formatedDate.dateFormat = "dd.MM.YYYY HH:mm:ss"
        let timeString = formatedDate.string(from: Date())
        
        countNumber = 0
        counterLabel.text = "0"
        historyTextView.text += "\(timeString):значение сброшено \n"
    }
    

}

