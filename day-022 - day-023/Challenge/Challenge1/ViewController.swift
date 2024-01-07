//
//  ViewController.swift
//  Challenge
//
//  Created by Ziady Mubaraq on 01/01/24.
//

import UIKit

class ViewController: UITableViewController {
  
  // MARK: Properties
  var pictures = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    for item in items {
      if item.hasSuffix(".png") {
        pictures.append(item)
      }
    }
    
    print(pictures)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    cell.imageView?.image = UIImage(named: pictures[indexPath.row])
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
      vc.selectedImage = pictures[indexPath.row]
      navigationController?.pushViewController(vc, animated: true)
    }
  }
}

