//
//  AddTodo.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import UIKit

class AddTodo: UIViewFromXib {
    
    // MARK Public properties
    var onAdd:(String -> Void)?
    
    // MARK Outlets
    @IBOutlet weak var textField: UITextField!
    
    // MARK Outlet Acitons
    @IBAction func addItem(sender: AnyObject) {
        if onAdd != nil {
            onAdd!(textField.text!)
        }
        textField.text = ""
    }
    
    // MARK UIViewFromXib Overrides
    override func getNibName() -> String {
        return "AddTodo"
    }
    
    override func setup() {
        
    }
    
}