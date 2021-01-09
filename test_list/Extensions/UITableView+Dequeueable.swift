//
//  UITableView+Register.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

// MARK: - ReusableView

protocol ReusableView {
    static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// MARK: - NibLoadable

protocol NibLoadable {
    static var nib: UINib { get }
}

extension NibLoadable where Self: UIView, Self: ReusableView {
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}

typealias Dequeueable = NibLoadable & ReusableView

extension UITableView {
        
    // MARK: - Registration
    
    func register<Cell: UITableViewCell>(_ : Cell.Type) where Cell: Dequeueable {
        register(Cell.nib, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
    
    // MARK: - Dequeue
    
    func dequeueReusableCell<Cell: UITableViewCell>(for indexPath: IndexPath, configure: ((Cell) -> Void)?) -> Cell where Cell: Dequeueable {
        let cell = dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        configure?(cell)
        return cell
    }
}
