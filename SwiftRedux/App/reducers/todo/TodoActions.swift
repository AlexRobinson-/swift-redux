//
//  TodoActions.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

struct AddTodoAction:SRAction {
    
    let text:String!
    
    init(text: String) {
        self.text = text
    }
    
}

struct RemoveTodoAction:SRAction {
    
    let id:Int!
    
    init(id: Int) {
        self.id = id
    }
    
}

struct ToggleTodoStatusAction:SRAction {
    let id:Int!
    
    init(id: Int) {
        self.id = id
    }
}

struct FilterTodosAction:SRAction {
    
    let filter:TodoStatus!
    
    init(filter:TodoStatus) {
        self.filter = filter
    }
    
}