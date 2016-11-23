//
//  Instance.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 20/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import Foundation

class Instance {
    
    var itemsArray: [Item]!
    
    static let instance = Instance()
    
    init() {
        itemsArray = [Item]()
    }
    
    func printItemsArray() {
        for iterator in itemsArray {
            print("\(iterator.title) | \(iterator.content)")
        }
    }
}
