//
//  DetailViewController.swift
//  Project1
//
//  Created by Michael Le on 07/02/2017.
//  Copyright © 2017 Michael Le. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  var selectedImage: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = selectedImage
    selectedImage.map { imageView.image = UIImage(named: $0) }
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destinationViewController.
      // Pass the selected object to the new view controller.
  }
  */

}
