//
//  Array.swift
//  prog5.1
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//


/**
 Indexed array of objects
 
 */
class Array<T> : SortableList<T> {
    
    /**
     Method for indexed square bracket notation that
     wraps the getObject and setObject methods
     
     - parameter index: Index of the item in the array
     */
    subscript(index: Int) -> T {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    
    // STORED PROPERTIES
    
    private var _count: Int    // Stored property that counts elements in the array
    
    // COMPUTED PROPERTIES
    
    /**
     Computed property that returns the number of elements in the array - overrides
     LinkedList property to return stored _count property rather than traversing
     the list and coutning the elements.
     
     - returns: Int Number of items in the array
     */
    override var count: Int {
        return self._count
    }
    
    // INITIALISERS
    
    /**
     Designated initialiser for Array - overrides LinkedList initialiser
     in order to initialise the _count stored property
     
     - parameter list: LinkedList to initialise array with (nil by default)
     */
    override init(list: LinkedList<T>? = nil) {
        self._count = 0
        super.init(list: list)
    }
    
    // METHODS
    
    /**
     Adds an object to the array - overrrides LinkedList method
     in order to increment the _count variable when new object
     is added.
     
     - parameter object: Object to add to the list
     */
    override func add(object: T) {
        super.add(object: object)
        self._count += 1
    }
    
    /**
     Removes a node from the array - overrideds LinkedList method
     in order to decrement the _count variable when an node (and object)
     is removed form the list
     
     - parameter node: Node to remove from the list
     - returns: Bool True if node found in the list and removed,
     false otherwise.
     */
    override func remove(node: Node<T>) -> Bool {
        let nodeRemoved: Bool = super.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }
    
    /**
     Array desription - adds a string indicating the container is an array before invoking super's description
     - returns: String representation of the Array
     */
    override var description: String {
        return "(Array) 0->"+super.description+"<-"+"\(super.count-1)"
    }
    
    /**
     array get component - accesses the object at the node from the given index
     - returns: object at index in array
     */
    func get(index: Int) -> T {
        assert(count > index && index >= 0, "index out of array bounds")
        return getNodeAtIndex(index: index)!.object
    }
    
    /**
     array set component - accesses the object at the node from the given index and set the object to a new given object
     */
    func set(object: T , at: Int) {
        assert(count > at && at >= 0, "index out of array bounds")
        let node = getNodeAtIndex(index: at)
        node!.object = object
    }
}
