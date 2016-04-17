//
//  SRStore.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

typealias SRListener = () -> Void;

class SRStore<SomeState: SRState> {
    
    private(set) var state:SomeState!
    private(set) var reducer:SRReducer<SomeState>!
    
    var listeners:[SRListener] = [];
    
    
    init(reducer: SRReducer<SomeState>) {
        self.reducer = reducer;
        self.dispatch(SREmptyAction());
    }
    
    func dispatch(action: SRAction) {
        self.state = self.reducer.handleAction(self.state, action: action);
        for listener in self.listeners {
            listener();
        }
    }
    
    func subscribe(listener : SRListener) -> (() -> Void) {
        self.listeners = [listener];
        
        return {() in print("test")};
    }
}