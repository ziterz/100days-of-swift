//
//  DetailViewController.swift
//  Challenge
//
//  Created by Ziady Mubaraq on 01/01/24.
//

import UIKit

class DetailViewController: UIViewController {

  // MARK: Builder Interface
  @IBOutlet var imageView: UIImageView!
  
  // MARK: Properties
  var selectedImage: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }
  
  @objc func shareTapped() {
    guard let image = imageView.image?.jpegData(compressionQuality: 1.0) else {
      print("Image not found")
      return
    }
    
    let vc = UIActivityViewController(activityItems: [image, selectedImage ?? ""], applicationActivities: [])
    vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
    present(vc, animated: true)
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
