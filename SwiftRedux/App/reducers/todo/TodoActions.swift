//
//  TodoActions.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

struct AddTodoAction:SRAction {
    
    let type = "ADD_TODO"
    
    let text:String!
    
    init(text: String) {
        self.text = text
    }
    
}