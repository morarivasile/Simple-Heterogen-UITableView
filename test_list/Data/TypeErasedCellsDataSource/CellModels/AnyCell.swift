//
//  AnyCell.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

/// Wrapper `AnyCell`
struct AnyCell {
    private let _tableViewDequeueReusableCell: (_ tableView: UITableView) -> UITableViewCell
    
    init<Model: CellModel>(_ model: Model)  {
        self._tableViewDequeueReusableCell = model.tableViewDequeueReusableCell
    }
    
    /// Conforming to `AnyCell` protocol
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> UITableViewCell {
        return _tableViewDequeueReusableCell(tableView)
    }
}
