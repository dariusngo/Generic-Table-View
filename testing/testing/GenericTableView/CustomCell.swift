//
//  CustomCell.swift
//  testing
//
//  Created by Darius Ngo on 11/21/19.
//  Copyright © 2019 Darius Ngo. All rights reserved.
//

import UIKit

public class CustomCell: UITableViewCell {
  func create(with type: CellType) {
    switch type {
    case .toggle(let text):
      textLabel?.text = text
      accessoryType = .detailButton
      accessoryView = UISwitch()
    case .segue(let text):
      textLabel?.text = text
      accessoryType = .disclosureIndicator
    case .detail(let text, let detail):
      textLabel?.text = text
      detailTextLabel?.text = detail
    }
  }
}
