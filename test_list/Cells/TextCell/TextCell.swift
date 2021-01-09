//
//  TextCell.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

final class TextCell: UITableViewCell, Dequeueable {
    
    @IBOutlet private weak var label: UILabel!
    
    func setText(_ text: String?) {
        label.text = text
    }
}
