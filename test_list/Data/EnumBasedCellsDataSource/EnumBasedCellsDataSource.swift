//
//  CellsDataSource.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

final class EnumBasedCellsDataSource: NSObject, UITableViewDataSource {
    
    weak var tableView: UITableView?
    
    private(set) var data: [CellType] = [] {
        didSet {
            tableView?.reloadData()
        }
    }
    
    init(tableView: UITableView?, data: [CellType]) {
        self.tableView = tableView
        self.data = data
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
            return tableView.dequeueReusableCell(for: indexPath) { (cell: TextCell) in
                cell.setText(text)
            }
        case .switchText(let text, let isSwitchOn):
            return tableView.dequeueReusableCell(for: indexPath) { (cell: SwitchTextCell) in
                cell.setLabelText(text)
                cell.setSwitchState(isSwitchOn)
            }
        case .coloredView(let color):
            return tableView.dequeueReusableCell(for: indexPath) { (cell: ColoredViewCell) in
                cell.setCenterViewColor(color)
            }
        }
    }
}
