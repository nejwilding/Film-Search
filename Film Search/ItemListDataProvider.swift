//
//  ItemListDataProvider.swift
//  We Got Tenders
//
//  Created by Nicholas Wilding on 18/07/2016.
//  Copyright © 2016 Nicholas Wilding. All rights reserved.
//

import UIKit

final class ItemListDataProvider<Item, Cell: UITableViewCell>: NSObject, UITableViewDataSource {
    
    private let reusableCell = String(describing: Cell.self)
    let items: [Item]
    let configure: (Cell, Item) -> ()

    init(items: [Item], configure: @escaping (Cell, Item) -> ()) {
        self.configure = configure
        self.items = items
    }

    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath) as! Cell
        let item = items[indexPath.row]
        configure(cell, item)

        return cell
    }
}

