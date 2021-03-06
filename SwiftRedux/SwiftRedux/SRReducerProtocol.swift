//
//  SRReducerProtocol.swift
//  SwiftRedux2
//
//  Created by Alex Robinson on 16/04/2016.
//  Copyright © 2016 Alex Robinson. All rights reserved.
//

import Foundation

protocol SRReducerProtocol {
    
    func handleAction(state: SRState?, action: SRAction) -> SRState
    
}