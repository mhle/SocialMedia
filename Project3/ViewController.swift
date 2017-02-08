//
//  ViewController.swift
//  Project1
//
//  Created by Michael Le on 06/02/2017.
//  Copyright © 2017 Michael Le. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

  var pictures = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Storm Viewer"
    // Do any additional setup after loading the view, typically from a nib.
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    pictures = items.filter { $0.hasPrefix("nssl") }
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
      navigationController?.pushViewController(vc, animated: true)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

