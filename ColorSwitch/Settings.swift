//
//  Settings.swift
//  ColorSwitch
//
//  Created by Donavon on 8/2/18.
//  Copyright © 2018 Donavon Buchanan. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1 // 01
    static let switchCategory: UInt32 = 0x1 << 1 // bitwise shift operator. Shift all bits by 1 left = 10
}
