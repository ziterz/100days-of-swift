//
//  ViewController.swift
//  Project7
//
//  Created by Ziady Mubaraq on 05/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  // MARK: Properties
  var petitions = [Petition]()
  var filteredPetitions = [Petition]()
  
  // MARK: Views
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "The Whitehouse Petitions"
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Credits", image: nil, target: self, action: #selector(showCredit))
    
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(findData))
    
    let urlString: String
    
    if navigationController?.tabBarItem.tag == 0 {
      urlString = "http://hackingwithswift.com/samples/petitions-1.json"
    } else {
      urlString = "http://hackingwithswift.com/samples/petitions-2.json"
    }
    DispatchQueue.global(qos: .userInitiated).async { [weak self] in
      if let url = URL(string: urlString) {
        if let data = try? Data(contentsOf: url) {
          self?.parse(json: data)
          return
        }
      }
      
      self?.showError()
    }
  }
  
  @objc func showCredit() {
    let ac = UIAlertController(title: "Credits", message: "The data comes from the We The People API of the Whithouse", preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default))
    present(ac, animated: true)
  }
  
  @objc func findData() {
    let ac = UIAlertController(title: "Find Petitions", message: nil, preferredStyle: .alert)
    ac.addTextField()
    let submitAction = UIAlertAction(title: "Submit", style: .default) {
      [weak self, weak ac] _ in
      guard let input = ac?.textFields?[0].text else { return }
      self?.submit(input)
    }
    ac.addAction(submitAction)
    present(ac, animated: true)
  }
  
  func submit(_ input: String) {
    if input.isEmpty {
      showMessageError(title: "Invalid character", message: "Please input valid character")
    }
    
    filteredPetitions = petitions.filter { $0.title.contains(input)}
    tableView.reloadData()
    return
  }
  
  func showError() {
    let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the feed; please check your connection and try again.", preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default))
    present(ac, animated: true)
  }
  
  func parse(json: Data) {
    DispatchQueue.global(qos: .userInitiated).async { [weak self] in
      let decoder = JSONDecoder()
      if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
        self?.petitions = jsonPetitions.results
        self?.filteredPetitions = jsonPetitions.results
        DispatchQueue.main.async { [weak self] in
          self?.tableView.reloadData()
        }
      }
    }
  }
  
  func showMessageError(title: String, message: String) {
    let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default))
    present(ac, animated: true)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filteredPetitions.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    let petition = filteredPetitions[indexPath.row]
    cell.textLabel?.text = petition.title
    cell.detailTextLabel?.text = petition.body
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let vc = DetailViewController()
    vc.detailItem = filteredPetitions[indexPath.row]
    navigationController?.pushViewController(vc, animated: true)
  }
}

