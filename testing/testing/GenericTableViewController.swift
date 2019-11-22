//
//  GenericTableViewController.swift
//  testing
//
//  Created by Darius Ngo on 11/21/19.
//  Copyright © 2019 Darius Ngo. All rights reserved.
//

import UIKit

public struct MockModel {
  static let mockData = [
    GenericTableViewSection(
      title: "Section Title",
      cellData: [.toggle(text: "Apex"), .toggle(text: "help"), .segue(text: "Yikes")]),
    GenericTableViewSection(
      title: "Section Title 2",
      cellData: [CellType.detail(text: "Im", detailText: "tired")]),
 ]
}

public class GenericTableViewController: UITableViewController {
  let dataSource = GenericTableViewDataSource(with: MockModel.mockData)
  
  override public func viewDidLoad() {
    super.viewDidLoad()

    registerTableViewCells()
    setupTableView()
  }
  
  private func setupTableView(){
    self.tableView.dataSource = dataSource
  }
  
  private func registerTableViewCells() {
    tableView.register(CustomCell.self, forCellReuseIdentifier: "toggleCell")
    tableView.register(CustomCell.self, forCellReuseIdentifier: "segueCell")
    tableView.register(CustomCell.self, forCellReuseIdentifier: "detailCell")
  }
}
