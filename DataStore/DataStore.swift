//
//  DataStore.swift
//  SpringApp3.1
//
//  Created by Dinar on 26.02.2023.
//

import Foundation
import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animation = AnimationPreset.allCases
    
    private init() {}
}
