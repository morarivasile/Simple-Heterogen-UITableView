//
//  ViewController.swift
//  test_list
//
//  Created by Vasile Morari on 08/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var dataSource: CellsDataSource!
    @IBOutlet private weak var tableView: UITableView! {
        didSet { registerTableViewCells() }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDataSource()
    }
    
    private func registerTableViewCells() {
        tableView.register(TextCell.self)
        tableView.register(SwitchTextCell.self)
        tableView.register(ColoredViewCell.self)
    }
    
    private func setupDataSource() {
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
