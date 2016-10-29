//
//  ViewController.swift
//  grok101
//
//  Created by Christina Moulton on 2016-10-29.
//  Copyright © 2016 Teak Mobile Inc. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // MARK: Get Todo #1
    Todo.todoByID(id: 1) { result in
      if let error = result.error {
        // got an error in getting the data, need to handle it
        print("error calling POST on /todos/")
        print(error)
        return
      }
      guard let todo = result.value else {
        print("error calling POST on /todos/ - result is nil")
        return
      }
      // success!
      print(todo.description())
      print(todo.title)
    }
    
    // MARK: Create new todo
    guard let newTodo = Todo(title: "My first todo",
                             id: nil,
                             userId: 1,
                             completedStatus: true) else {
                              print("error: newTodo isn't a Todo")
                              return
    }
    newTodo.save { result in
      guard result.error == nil else {
        // got an error in getting the data, need to handle it
        print("error calling POST on /todos/")
        print(result.error!)
        return
      }
      guard let todo = result.value else {
        print("error calling POST on /todos/. result is nil")
        return
      }
      // success!
      print(todo.description())
      print(todo.title)
    }
  }
}
