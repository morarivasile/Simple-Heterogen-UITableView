//
//  ColoredViewCellModel.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

struct ColoredViewCellModel: CellModel {
    let color: UIColor
    
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> ColoredViewCell {
        let cell = dequeueReusableCell(tableView)
        cell.setCenterViewColor(color)
        return cell
    }
}
