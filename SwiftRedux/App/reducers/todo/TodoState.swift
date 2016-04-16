//
//  TodoState.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

struct TodoState:SRState {
    
    let todoItems:[String]!
    
    init() {
        self.todoItems = []
    }
    
    init(todoItems: [String]) {
        self.todoItems = todoItems
    }
    
}