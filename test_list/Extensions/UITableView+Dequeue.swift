//
//  UITableView+Dequeue.swift
//  test_list
//
//  Created by Vasile Morari on 09/01/2021.
//

import UIKit

extension UITableView {
    func dequeueCell<T: UITableViewCell>(indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
}

private extension UITableViewCell {
    class var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
