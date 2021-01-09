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
    
    func setViewModel(_ viewModel: SwitchTextCellViewModel) {
        label.text = viewModel.text
        switchControl.isOn = viewModel.isSwitchOn
    }
}
