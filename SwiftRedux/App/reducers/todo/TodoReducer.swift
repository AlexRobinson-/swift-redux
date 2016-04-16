//
//  TodoReducer.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

class TodoReducer: SRReducer<TodoState> {
    
    override func handleAction(state: TodoState?, action: SRAction) -> TodoState {
        switch(action) {
            case is AddTodoAction:
                return handleAddTodo(state, action: action as! AddTodoAction)
            default:
                return TodoState(todoItems: ["Testing"] + (state?.todoItems ?? []))
        }
    }
    
    private func handleAddTodo(state: TodoState?, action: AddTodoAction) -> TodoState {
        return TodoState(todoItems: [action.text] + (state?.todoItems ?? []))
    }
    
}