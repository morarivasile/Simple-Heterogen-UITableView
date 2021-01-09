//
//  CellType.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

enum CellType {
    case text(_ text: String?)
    case switchText(_ text: String?, isSwitchOn: Bool)
    case coloredView(_ color: UIColor)
}
