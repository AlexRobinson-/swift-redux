//
//  RootReducer.swift
//  SwiftRedux
//
//  Created by Alex Robinson on 17/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

let rootReducer = SRCombineReducers(reducers: [
    "todo": TodoReducer()
])

let rootStore = SRStore<SRCombineReducersState>(reducer: rootReducer);