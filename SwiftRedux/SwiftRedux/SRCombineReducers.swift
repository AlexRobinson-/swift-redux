//
//  SRCombineReducers.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

//func combineReducers(reducers: [String: SRReducer]) -> SRReducer {
//    
//    return {(possibleState: ReduxState?, action: ReduxAction) -> ReduxState in
//        
//        let state = possibleState as? RootReducerState ?? RootReducerState(states: nil)
//        
//        return RootReducerState(
//            states: reducers.keys
//                .reduce([String:  ReduxState](), combine: {
//                    var newState = $0
//                    newState[$1] = reducers[$1]!(state: state.states[$1], action: action)
//                    return newState
//                })
//        )
//    }
//}

class SRCombineReducers: SRReducer<SRCombineReducersState> {
    
    let reducers: [String: SRReducerProtocol]
    
    init(reducers: [String: SRReducerProtocol]) {
        self.reducers = reducers
    }
    
    override func handleAction(state: SRCombineReducersState?, action: SRAction) -> SRCombineReducersState {
        
        let newState = state ?? SRCombineReducersState()
        
        let reduceSubState = {(prevNewStates:[String:  SRState], currentStateRef: String) -> [String:  SRState] in
            var newStates = prevNewStates
            newStates[currentStateRef] = self.reducers[currentStateRef]!.handleAction(newState.states[currentStateRef], action: action)
            return newStates
        }
    
        return SRCombineReducersState(states:
            self.reducers.keys
                .reduce([String:  SRState](), combine:reduceSubState)
        )
    }
    
}