//
//  ViewController.swift
//  Project2
//
//  Created by Ziady Mubaraq on 31/12/23.
//

import UIKit

class ViewController: UIViewController {

  // MARK: User Interface
  @IBOutlet var button1: UIButton!
  @IBOutlet var button2: UIButton!
  @IBOutlet var button3: UIButton!

  // MARK: Variables
  var countries = [String]()
  var score = 0
  var correctAnswer = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    
    button1.layer.borderWidth = 1
    button2.layer.borderWidth = 1
    button3.layer.borderWidth = 1
    
    button1.layer.borderColor = UIColor.black.cgColor
    button2.layer.borderColor = UIColor.black.cgColor
    button3.layer.borderColor = UIColor.black.cgColor
    
    askQuestion()
  }
  
  func askQuestion() {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
    
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
    
    title = countries[correctAnswer].uppercased()
  }


}

