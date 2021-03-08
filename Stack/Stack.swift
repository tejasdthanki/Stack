//
//  Stack.swift
//  Stack
//
//  Created by Tejas Thanki on 04/03/21.
//

import UIKit

public class Stack<T> {
    private var array = [T]()
    
    public var isEmpty:Bool{
        return array.isEmpty
    }

    public var count:Int{
        return array.count
    }
    
    public func push (element:T){
        array.append(element)
    }
    
    public func pop() -> T?{
        return array.popLast()
    }
    
    public var top:T?{
        return array.last
    }
}
