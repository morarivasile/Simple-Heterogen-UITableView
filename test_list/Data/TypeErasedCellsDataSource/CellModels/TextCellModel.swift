//
//  TextCellModel.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

struct TextCellModel: CellModel {
    let text: String?
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> TextCell {
        let cell = dequeueReusableCell(tableView)
        cell.setText(text)
        return cell
    }
}
