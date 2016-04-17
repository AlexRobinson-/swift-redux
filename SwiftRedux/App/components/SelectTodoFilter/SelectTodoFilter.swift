//
//  SelectTodoFilter.swift
//  SwiftRedux
//
//  Created by Alex Robinson on 17/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import UIKit

class SelectTodoFilter: UIViewFromXib {
    
    // MARK Public properties
    var onSelectFilter: ((TodoStatus) -> Void)?
    
    // MARK Outlets
    @IBOutlet weak var filterSelect: UISegmentedControl!
    
    // MARK Outlet Acitons
    @IBAction func setFilter(sender: AnyObject) {
        if self.onSelectFilter != nil {
            var currentFilter = TodoStatus.Todo
            
            switch(filterSelect.selectedSegmentIndex) {
            case 0: currentFilter = .Todo
                break
            case 1: currentFilter = .Done
                break
            case 3: currentFilter = .All
                break
            default:
                currentFilter = .All
            }
            
            self.onSelectFilter!(currentFilter)
        }
    }
    
    
    // MARK UIViewFromXib Overrides
    override func getNibName() -> String {
        return "SelectTodoFilter"
    }
    
    override func setup() {
        
    }
    
}