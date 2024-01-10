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
class ViewController: UICollectionViewController {
  // MARK: Properties
  var pictures = [String]()
  var data = Sample()
  
  // MARK: Views
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
      DispatchQueue.main.async {
        self?.collectionView.reloadData()
      }
    }
    
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Picture", for: indexPath) as? PictureCell else {
      fatalError("Unable to dequeue PictureCell.")
    }
    
    let picture = pictures[indexPath.item]
    cell.imageView.image = UIImage(named: picture)
    cell.imageView.layer.borderColor = UIColor(.gray).cgColor
    cell.imageView.layer.borderWidth = 2
    cell.imageView.layer.cornerRadius = 3
    cell.layer.cornerRadius = 7
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
      vc.selectedImage = pictures[indexPath.item]
      navigationController?.pushViewController(vc, animated: true)
    }
  }
  
  func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
  }
}

