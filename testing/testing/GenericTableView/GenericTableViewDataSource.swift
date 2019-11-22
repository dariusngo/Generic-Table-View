//
//  GenericTableViewDataSource.swift
//  testing
//
//  Created by Darius Ngo on 11/21/19.
//  Copyright © 2019 Darius Ngo. All rights reserved.
//

import UIKit

public class GenericTableViewDataSource: NSObject, UITableViewDataSource {
  let sections: [GenericTableViewSection]
  
  init(with sections: [GenericTableViewSection]) {
    self.sections = sections
  }
  
  public func numberOfSections(in tableView: UITableView) -> Int {
    return sections.count
  }

  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sections[section].cellData.count
  }
  
  public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sections[section].title
  }

  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellType = sections[indexPath.section].cellData[indexPath.row]
  
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellType.identifier, for: indexPath) as? CustomCell else {
      fatalError("Unknown identifier")
    }

    cell.create(with: cellType)
    
    return cell
  }
}

