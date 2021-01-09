//
//  SwitchTextCellModel.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

struct SwitchTextCellModel: CellModel {
    let text: String?
    let isSwitchOn: Bool
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> SwitchTextCell {
        let cell = dequeueReusableCell(tableView)
        cell.setLabelText(text)
        cell.setSwitchState(isSwitchOn)
        return cell
    }
}
