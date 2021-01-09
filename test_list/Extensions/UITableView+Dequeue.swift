//
//  UITableView+Dequeue.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

extension UITableView {
    func dequeueCell<T: UITableViewCell>(for indexPath: IndexPath, configure: ((T) -> Void)?) -> T {
        let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
        configure?(cell)
        return cell
    }
}

private extension UITableViewCell {
    class var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
