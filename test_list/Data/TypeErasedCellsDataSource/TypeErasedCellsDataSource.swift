//
//  TypeErasedCellsDataSource.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit.UITableView

final class TypeErasedCellsDataSource: NSObject, UITableViewDataSource {
    
    weak var tableView: UITableView?
    
    private(set) var cellModels: [AnyCell] = [] {
        didSet {
            tableView?.reloadData()
        }
    }
    
    init(tableView: UITableView?, cellModels: [AnyCell]) {
        self.tableView = tableView
        self.cellModels = cellModels
    }
    
    func setModels(_ cellModels: [AnyCell]) {
        self.cellModels = cellModels
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellModels[indexPath.row].tableViewDequeueReusableCell(tableView)
    }
}
