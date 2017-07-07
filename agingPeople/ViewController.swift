//
//  ViewController.swift
//  agingPeople
//
//  Created by Erick Lui on 7/6/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var people = [
    "George",
    "Betty",
    "Fran",
    "Joe",
    "Helda",
    "Winfred",
    "Zed",
    "Sara",
    "Jeffy",
    "Abraham",
    "Anna",
    "Melinda",
  ]
  
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
    cell.textLabel?.text = people[indexPath.row]
    cell.detailTextLabel?.text = String(arc4random_uniform(91) + UInt32(5)) + " years old"
//    print(cell.detailTextLabel?.text)
    return cell
  }
}
