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
  var totalAnswer = 0
  
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
  
  func askQuestion(action: UIAlertAction! = nil) {
    countries.shuffle()
    correctAnswer = Int.random(in: 0...2)
    
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
    
    title = countries[correctAnswer].uppercased() + " | Score: \(score)"
  }
  
  func resetQuestion(action: UIAlertAction! = nil) {
    score = 0
    askQuestion()
    
    title = countries[correctAnswer].uppercased() + " | Score: \(score)"
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    var ac: UIAlertController
    
    if sender.tag == correctAnswer {
      score += 1
      ac = UIAlertController(title: "Correct", message: "Your score is \(score)", preferredStyle: .alert)
    } else {
      score -= 1
      ac = UIAlertController(title: "Wrong", message: "That's flag of \(countries[sender.tag])", preferredStyle: .alert)
    }

    ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
    
    if totalAnswer == 9 {
      ac = UIAlertController(title: "Congratulation", message: "Your have answered 10 questions", preferredStyle: .alert)
      ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: resetQuestion))
    }
    present(ac, animated: true)
    totalAnswer += 1
  }
  
  
}

