//
//  ViewController.swift
//  Challenge
//
//  Created by Ziady Mubaraq on 05/01/24.
//

import UIKit

class ViewController: UITableViewController {

  // MARK: Properties
  var shoppingList = [String]()
  
  // MARK: Views
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Shopping List"
    
    // Add product on Right Bar
    let addProduct = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addProduct))
    
    // Add share on Right Bar
    let shareProduct = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    
    navigationItem.rightBarButtonItems = [addProduct, shareProduct]
    
    // Reset shopping list on Left Bar
    navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(resetList))
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return shoppingList.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Shopping", for: indexPath)
    cell.textLabel?.text = shoppingList[indexPath.row]
    return cell
  }

  @objc func addProduct() {
    let ac = UIAlertController(title: "Enter product name", message: nil, preferredStyle: .alert)
    ac.addTextField()
    
    let submitAction = UIAlertAction(title: "Submit", style: .default) {
      [weak self, weak ac] _ in
      guard let productName = ac?.textFields?[0].text else { return }
      self?.submit(productName)
    }
    
    ac.addAction(submitAction)
    present(ac, animated: true)
  }
  
  @objc func resetList() {
    let ac = UIAlertController(title: "Reset Shopping List", message: "Are you sure want to reset the shopping list?", preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
      self.shoppingList.removeAll(keepingCapacity: true)
      self.tableView.reloadData()
    }))
    ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    present(ac, animated: true)
  }
  
  @objc func shareTapped() {
    let list = shoppingList.joined(separator: "\n")
    
    let vc = UIActivityViewController(activityItems: [list], applicationActivities: [])
    vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
    present(vc, animated: true)
  }
  
  func submit(_ productName: String) {
    if productName.isEmpty {
      showError(title: "Invalid product name", message: "You must input valid product name")
      return
    }
    
    shoppingList.insert(productName, at: 0)
    
    let indexPath = IndexPath(row: 0, section: 0)
    tableView.insertRows(at: [indexPath], with: .automatic)
    return
  }
  
  func showError(title: String, message: String) {
    let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default))
    present(ac, animated: true)
  }
}

