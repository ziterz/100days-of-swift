//
//  DetailViewController.swift
//  Project1
//
//  Created by Ziady Mubaraq on 30/12/23.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!
  var selectedImage: String?
  var row: Int = 0
  var totalRow: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Picture \(row+1) of \(totalRow)"
    navigationItem.largeTitleDisplayMode = .never
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }
  
  @objc func shareTapped() {
    guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
      print("No image found")
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
