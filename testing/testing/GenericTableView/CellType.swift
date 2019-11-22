//
//  CellType.swift
//  testing
//
//  Created by Darius Ngo on 11/21/19.
//  Copyright © 2019 Darius Ngo. All rights reserved.
//

public enum CellType {
  case toggle(text: String)
  case segue(text: String)
  case detail(text: String, detailText: String)
  
  public var identifier: String {
    switch self {
    case .toggle:
      return "toggleCell"
    case .segue:
      return "segueCell"
    case .detail:
      return "detailCell"
    }
  }
}
