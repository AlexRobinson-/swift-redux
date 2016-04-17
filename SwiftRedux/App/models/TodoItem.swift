//
//  TodoItem.swift
//  SwiftRedux
//
//  Created by Alex Robinson on 17/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

var _todoId = 0

let newTodoId = {() -> Int in
    let newId = _todoId
    _todoId += 1
    return newId
}

enum TodoStatus {
    case Todo
    case Done
    case All
}

class Todo {
    
    var id:Int!
    var text:String!
    var status:TodoStatus = .Todo
    
    init(text: String) {
        self.id = newTodoId()
        self.text = text
    }
    
}