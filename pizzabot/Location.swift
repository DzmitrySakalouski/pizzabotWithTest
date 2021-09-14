//
//  File.swift
//  
//
//  Created by Dzmitry on 14.09.21.
//

import Foundation

public class Location: Equatable {
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == lhs.y
    }
    
    public var x: Int
    public var y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
