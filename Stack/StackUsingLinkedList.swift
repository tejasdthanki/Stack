//
//  StackUsingLinkedList.swift
//  Stack
//
//  Created by Tejas Thanki on 05/03/21.
//

import UIKit

public class StackUsingLinkedList<T>:Equatable {
    public static func == (lhs: StackUsingLinkedList<T>, rhs: StackUsingLinkedList<T>) -> Bool {
        return lhs.top == rhs.top
    }
    
    var top:Node<T>? = nil
    
    
    public var isEmpty:Bool{
        if top == nil{
            return true
        }else{
            return false
        }
    }
    public func push(value:T){
        let newNode:Node = Node(data: value)
        newNode.next = top
        top = newNode
    }
    
    public func pop(){
        var newNode:Node<T>?
        if(top == nil){
            return
        }
        newNode = top
        top = top?.next
        newNode = nil
    }
    
    public var count:Int{
        guard var node = top else {
            return 0
        }
        var count:Int = 1
        while let next = node.next {
            node = next
            count = count + 1
        }
        return count
    }
}
