//
//  ViewController.swift
//  Project1
//
//  Created by Ziady Mubaraq on 30/12/23.
//

import UIKit
struct Sample {
  var name: String?
}
class ViewController: UITableViewController {
  // MARK: properties
  var pictures = [String]()
  var data = Sample()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    data.name = "Hi"
    title = "Storm Viewer"
    navigationController?.navigationBar.prefersLargeTitles = true
    
    DispatchQueue.global(qos: .userInitiated).async { [weak self] in
      let fm = FileManager.default
      let path = Bundle.main.resourcePath!
      let items = try! fm.contentsOfDirectory(atPath: path)
      
      for item in items.sorted() {
        if item.hasPrefix("nssl") {
          self?.pictures.append(item)
        }
      }
    }
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
      vc.selectedImage = pictures[indexPath.row]
      vc.row = indexPath.row
      vc.totalRow = tableView.numberOfRows(inSection: 0)
      navigationController?.pushViewController(vc, animated: true)
    }
  }
}

