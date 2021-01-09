//
//  ColoredViewCell.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

final class ColoredViewCell: UITableViewCell, Dequeueable {
    
    @IBOutlet private weak var centerView: UIView!
    
    func setCenterViewColor(_ color: UIColor) {
        centerView.backgroundColor = color
    }
}
