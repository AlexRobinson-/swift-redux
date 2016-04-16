//
//  ViewController.swift
//  SwiftRedux
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addTodo: AddTodo!
    @IBOutlet weak var todoList: TodoList!
    
    var unsubscribe:(() -> Void)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.unsubscribe = rootStore.subscribe(self.render)
        
        self.addTodo.onAdd = {rootStore.dispatch(AddTodoAction(text: $0))}
        
        self.todoList.onTodoSelect = {rootStore.dispatch(RemoveTodoAction(index: $0))}
    }
    
    func render() {
        self.renderTodo(rootStore.state.states["todo"] as? TodoState)
    }
    
    private func renderTodo(state: TodoState?) {
        self.todoList.setTodos(state?.todoItems ?? [])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

