//
//  ViewController.swift
//  test_list
//
//  Created by Vasile Morari on 08/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet { registerTableViewCells() }
    }
    
    private var dataSource: UITableViewDataSource! {
        didSet { tableView.dataSource = dataSource }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        setupEnumBasedDataSource()
        setupTypeErasedModelsDataSource()
    }
    
    private func registerTableViewCells() {
        tableView.register(TextCell.self)
        tableView.register(SwitchTextCell.self)
        tableView.register(ColoredViewCell.self)
    }
    
    private func setupEnumBasedDataSource() {
        dataSource = EnumBasedCellsDataSource(tableView: tableView, data: [
            .text("Some long text tofill up the text cell on more than one row."),
            .switchText("Another text for switch cell.", isSwitchOn: true),
            .coloredView(.systemPink),
            .coloredView(.systemIndigo),
            .coloredView(.systemPurple)
        ])
    }
    
    private func setupTypeErasedModelsDataSource() {
        dataSource = TypeErasedCellsDataSource(tableView: tableView, cellModels: [
            AnyCell(TextCellModel(text: "Some long text tofill up the text cell on more than one row.")),
            AnyCell(SwitchTextCellModel(text: "Another text for switch cell.", isSwitchOn: true)),
            AnyCell(ColoredViewCellModel(color: .systemPink)),
            AnyCell(ColoredViewCellModel(color: .systemIndigo)),
            AnyCell(ColoredViewCellModel(color: .systemPurple))
        ])
    }
}
