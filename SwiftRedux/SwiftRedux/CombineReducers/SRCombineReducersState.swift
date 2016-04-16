//
//  SRCombineReducersState.swift
//  SwiftRedux
//
//  Created by Alex Robinson on 17/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

struct SRCombineReducersState: SRState {
    
    let states:[String: (SRState)]!
    
    init() {
        self.states = [:]
    }
    
    init(states: [String: SRState]) {
        self.states = states
    }
    
}