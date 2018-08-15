//
//  main.swift
//  prog5.1
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//
import Foundation

let str1: String = "Item V";
let str2: String = "Item E";
let str3: String = "Item S";
let str4: String = "Item M";

var list: LinkedList<String> = LinkedList<String>()
print("\(list)")

list.add(object: str1)
list.add(object: str2)
list.add(object: str3)
list.add(object: str4)
print("\(list)")

var queue: Queue<String> = Queue<String>(list: list)
print("\n\(queue)")

let item1 = queue.get()
print("Got item: \(item1)")
print("\(queue)")

print("Putting item: \(str2)")
queue.put(object: str2)
print("\(queue)")

var stack: Stack<String> = Stack<String>(list: list)
print("\n\(stack)")

let item2 = stack.pop()
print("Popped item: \(item2)")
print("\(stack)")

print("Pushing item: \(str2)")
stack.push(object: str2)
print("\(stack)")


var array: Array<String> = Array<String>(list: list)
print("\n\(array)")

print("Setting array[2] to \(str1)")
array[2] = str1
print("\(array)")

print("Sorting array");
array.sort(isObject: { o1, o2 in (o1) < (o2) })
for index in 0..<array.count {
    print("array[\(index)]=\(array[index])")
}
