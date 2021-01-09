//
//  CellModel.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

/// Cell `Interface`
protocol CellModel {
    /// PAT Placeholder for unknown Concrete Type `Model`
    associatedtype Cell: UITableViewCell
    /// Recieves a parameter of Concrete Type `Model`
    func tableViewDequeueReusableCell(_ tableView: UITableView) -> Cell
}

extension CellModel where Cell: Dequeueable {
    func dequeueReusableCell(_ tableView: UITableView) -> Cell {
        let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier)
        
        if let cell = dequeuedCell as? Cell {
            return cell
        } else {
            fatalError("Unable to dequeue cell of type: \(String(describing: Cell.self)), for reuseIdentifier: \(Cell.reuseIdentifier)")
        }
    }
}
