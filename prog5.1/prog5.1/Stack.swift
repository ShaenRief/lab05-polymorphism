//
//  Stack.swift
//  prog5.1
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

/**
 A Stack of Objects
 */
class Stack<T> : LinkedList<T> {
    
    /**
     Stack desription - adds a string indicating the
     container is a stack before invoking super's description
     
     - returns: String String representation of the stack
     */
    override var description: String {
        return "(Stack)"+super.description+"<-->"
    }
    
    /**
     Push an an object onto the top of the stack
     
     - parameter object: Object to put on the stack.
     */
    func push(object: T) {
        // Use inherited method to add object
        // to the list
        self.add(object: object);
    }
    
    /**
     Gets an an object from the top of the stack and returns it
     
     - returns: Any? Object removed from the top of the stack,
     nil if stack is empy.
     */
    func pop() -> T? {
        // If top points to a non-nil node,
        // remove that node and return its object
        if let t = tail {
            //Use inherited method to remove
            //node from the list (at the end)
            self.remove(node: t)
            return t.object
        } else {
            return nil
        }
    }
}
