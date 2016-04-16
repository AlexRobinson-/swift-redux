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
    var store:SRStore<TodoState>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store = SRStore<TodoState>(reducer: TodoReducer());
        
        self.unsubscribe = store.subscribe(self.render)
        
        self.addTodo.onAdd = {self.store.dispatch(AddTodoAction(text: $0))}
    }
    
    func render() {
        self.todoList.setTodos(store.state.todoItems)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

