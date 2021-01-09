//
//  ViewController.swift
//  test_list
//
//  Created by Vasile Morari on 08/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private var dataSource: CellsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.tableView = tableView
        dataSource.setData([
            .text("Some long text tofill up the text cell on more than one row."),
            .switchText(.init(text: "Another text for switch cell.", isSwitchOn: true)),
            .coloredView(.systemPink),
            .coloredView(.systemIndigo),
            .coloredView(.systemPurple)
        ])
    }
}
