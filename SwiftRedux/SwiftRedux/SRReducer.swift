//
//  SRReducer.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

class SRReducer<T: SRState>: SRReducerProtocol {
    
    typealias SomeStateType = T
 
    final func handleAction(state: SRState?, action: SRAction) -> SRState {
        return handleAction(state as? T, action: action)
    }
    
    func handleAction(state: T?, action: SRAction) -> T {
        fatalError("Override the handleAction<\(T.self)> function")
    }
}