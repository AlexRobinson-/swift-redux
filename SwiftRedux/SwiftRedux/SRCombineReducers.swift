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
