//
//  TodoList.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import UIKit

class TodoList: UIViewFromXib, UITableViewDelegate, UITableViewDataSource {
    
    // MARK Private Properties
    private var todos:[Todo] = []
    
    // MARK Public Properties
    var onTodoSelect: ((todo: Todo) -> Void)?
    
    // MARK Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK UIViewFromXib Overrides
    override func getNibName() -> String {
        return "TodoList"
    }
    
    override func setup() {
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    
    // MARK: Public functions
    func setTodos(todos:[Todo]) {
        self.todos = todos;
        
        if(self.tableView != nil) {
            self.tableView.reloadData()
        }
    }
    
    // MARK: TableView
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.onTodoSelect?(todo: self.todos[indexPath.row])
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = self.todos[indexPath.row].text
        
        return cell
    }


}
