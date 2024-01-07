//
//  ViewController.swift
//  Challenge
//
//  Created by Ziady Mubaraq on 07/01/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  // MARK: Properties
  var lifePointLabel: UILabel!
  var questionLabel: UILabel!
  var currentAnswer: UITextField!
  var submitButton: UIButton!
  
  var questions: [String] = ["RHYTHM", "GUITAR", "PIANO", "DRUM", "VOCAL"]
  var lifePoint: Int = 7 {
    didSet {
      lifePointLabel.text = "Life Point: \(lifePoint)"
    }
  }
  var chooseQuestion: String = "RHYTHM"
  var answers: [Character] = [Character]()
  
  // MARK: Views
  override func loadView() {
    view = UIView()
    view.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 128, alpha: 1))
    
    // MARK: Life Point label
    lifePointLabel = UILabel()
    lifePointLabel.translatesAutoresizingMaskIntoConstraints = false
    lifePointLabel.textAlignment = .left
    lifePointLabel.text = "Life Point: \(lifePoint)"
    lifePointLabel.font = UIFont.systemFont(ofSize: 22, weight: .regular)
    view.addSubview(lifePointLabel)
    
    // MARK: Question Label
    questionLabel = UILabel()
    questionLabel.translatesAutoresizingMaskIntoConstraints = false
    questionLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    questionLabel.numberOfLines = 0
    view.addSubview(questionLabel)
    
    // MARK: Current Answer Text Field
    currentAnswer = UITextField()
    currentAnswer.translatesAutoresizingMaskIntoConstraints = false
    currentAnswer.placeholder = "Guess"
    currentAnswer.textAlignment = .center
    currentAnswer.borderStyle = .line
    currentAnswer.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    view.addSubview(currentAnswer)
    
    // MARK: Submit Button
    submitButton = UIButton(type: .system)
    submitButton.translatesAutoresizingMaskIntoConstraints = false
    submitButton.setTitle("SUBMIT", for: .normal)
    submitButton.configuration = .filled()
    submitButton.configuration?.baseBackgroundColor = .white
    submitButton.configuration?.baseForegroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 128, alpha: 1))
    submitButton.configuration?.buttonSize = .large
    submitButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    view.addSubview(submitButton)
    
    NSLayoutConstraint.activate([
      lifePointLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      lifePointLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0),
      
      questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      questionLabel.topAnchor.constraint(equalTo: lifePointLabel.bottomAnchor, constant: 100),
      
      currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      currentAnswer.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 80),
      currentAnswer.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5),
      
      submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      submitButton.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor, constant: 30)
    ])
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    currentAnswer.delegate = self
    
    resetGame()
  }
  
  func resetGame() {
    DispatchQueue.global(qos: .userInitiated).async { [weak self] in
      self?.lifePoint = 7
      self?.questions.shuffle()
      guard let question = self?.questions[0] else { return }
      self?.chooseQuestion = question
      DispatchQueue.main.async { [weak self] in
        self?.currentAnswer.text = ""
        self?.questionLabel.text = String((self?.chooseQuestion.map { _ in Character("?") })!)
      }
    }
  }
  
  @objc func buttonTapped() {
    if chooseQuestion.contains(currentAnswer.text ?? "") {
      answers.append(Character(currentAnswer.text ?? ""))
      questionLabel.text = String(chooseQuestion.map { !answers.contains($0) ? Character("?") : $0 })
    } else {
      lifePoint -= 1
    }
    
    if lifePoint == 0 {
      let ac = UIAlertController(title: "Game Over", message: "You have run out of lives", preferredStyle: .alert)
      ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
        self.resetGame()
      }))
      present(ac, animated: true)
    }
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let currentString: NSString = textField.text! as NSString
    
    let newString: NSString =  currentString.replacingCharacters(in: range, with: string) as NSString
    return newString.length <= 1
  }
}

