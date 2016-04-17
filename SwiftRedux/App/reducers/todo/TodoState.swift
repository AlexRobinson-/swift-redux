//
//  TodoState.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

struct TodoState:SRState {
    
    var todoItems:[Todo] = []
    var filter:TodoStatus = .Todo
    
    init() {
        self.todoItems = []
    }
    
    init(todoItems: [Todo]) {
        self.todoItems = todoItems
    }
    
}