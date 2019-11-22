//
//  GenericTableViewSection.swift
//  testing
//
//  Created by Darius Ngo on 11/21/19.
//  Copyright © 2019 Darius Ngo. All rights reserved.
//

import Foundation

public struct GenericTableViewSection {
  public var title: String?
  public var cellData: [CellType]
  
  public init(title: String?, cellData: [CellType]) {
    self.title = title
    self.cellData = cellData
  }
}
