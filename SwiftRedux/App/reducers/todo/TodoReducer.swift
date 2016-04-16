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
        
        let newState = state ?? TodoState()
        
        switch(action) {
            case is AddTodoAction:
                return handleAddTodo(newState, action: action as! AddTodoAction)
            case is RemoveTodoAction:
                return handleRemoveTodo(newState, action: action as! RemoveTodoAction)
            default:
                return newState
        }
    }
    
    private func handleAddTodo(state: TodoState, action: AddTodoAction) -> TodoState {
        var newState = state;
        newState.todoItems = [action.text] + state.todoItems
        return newState
    }
    
    private func handleRemoveTodo(state: TodoState, action: RemoveTodoAction) -> TodoState {
        var newState = state;
        newState.todoItems.removeAtIndex(action.index)
        return newState
    }

    
}