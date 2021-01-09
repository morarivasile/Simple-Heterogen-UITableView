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
            return tableView.dequeueCell(for: indexPath) { (cell: TextCell) in
                cell.setText(text)
            }
        case .switchText(let viewModel):
            return tableView.dequeueCell(for: indexPath) { (cell: SwitchTextCell) in
                cell.setViewModel(viewModel)
            }
        case .coloredView(let color):
            return tableView.dequeueCell(for: indexPath) { (cell: ColoredViewCell) in
                cell.setCenterViewColor(color)
            }
        }
    }
}
