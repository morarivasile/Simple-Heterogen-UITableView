//
//  SwitchTextCell.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

final class SwitchTextCell: UITableViewCell, Dequeueable {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var switchControl: UISwitch!
    
    func setLabelText(_ text: String?) {
        label.text = text
    }
    
    func setSwitchState(_ isOn: Bool) {
        switchControl.isOn = isOn
    }
}
