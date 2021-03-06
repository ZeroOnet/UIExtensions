//
//  Compatible.swift
//  UIExtensions
//
//  Created by 李文康 on 2019/7/26.
//  Copyright © 2019 FunctionMaker. All rights reserved.
//

import Foundation

protocol Compatible {
    associatedtype CompatibleType
    static var zon: Zonable<CompatibleType>.Type { get }
    var zon: Zonable<CompatibleType> { get }
}

extension Compatible {
    static var zon: Zonable<Self>.Type {
        get {
            return Zonable<Self>.self
        }
    }
    
    var zon: Zonable<Self> {
        get {
            return Zonable(self)
        }
    }
}

struct Zonable<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

extension NSObject: Compatible {}
