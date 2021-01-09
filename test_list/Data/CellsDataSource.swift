//
//  CellsDataSource.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

final class CellsDataSource: NSObject, UITableViewDataSource {
    
    weak var tableView: UITableView?
    
    private(set) var data: [CellType] = [] {
        didSet {
            tableView?.reloadData()
        }
    }
    
    func setData(_ data: [CellType]) {
        self.data = data
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch data[indexPath.row] {
        case .text(let text):
            let cell: TextCell = tableView.dequeueCell(indexPath: indexPath)
            cell.setText(text)
            return cell
        case .switchText(let viewModel):
            let cell: SwitchTextCell = tableView.dequeueCell(indexPath: indexPath)
            cell.setViewModel(viewModel)
            return cell
        case .coloredView(let color):
            let cell: ColoredViewCell = tableView.dequeueCell(indexPath: indexPath)
            cell.setCenterViewColor(color)
            return cell
        }
    }
}
