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
            case is ToggleTodoStatusAction:
                return handleToggleTodoStatus(newState, action: action as! ToggleTodoStatusAction)
            case is FilterTodosAction:
                return handleFilterTodos(newState, action: action as! FilterTodosAction)
            default:
                return newState
        }
    }
    
    private func handleAddTodo(state: TodoState, action: AddTodoAction) -> TodoState {
        var newState = state;
        newState.todoItems = [Todo(text: action.text)] + state.todoItems
        return newState
    }
    
    private func handleRemoveTodo(state: TodoState, action: RemoveTodoAction) -> TodoState {
        var newState = state;
        newState.todoItems = state.todoItems.map{
            if $0.id != action.id {
                return $0
            }
            
            $0.status = .Done
            
            return $0
        }
        return newState
    }
    
    private func handleToggleTodoStatus(state: TodoState, action: ToggleTodoStatusAction) -> TodoState {
        var newState = state;
        newState.todoItems = state.todoItems.map{
            if $0.id != action.id {
                return $0
            }
            
            $0.status = $0.status == .Done ? .Todo : .Done
            
            return $0
        }
        return newState
    }

    private func handleFilterTodos(state: TodoState, action: FilterTodosAction) -> TodoState {
        var newState = state;
        newState.filter = action.filter
        return newState
    }
    
}