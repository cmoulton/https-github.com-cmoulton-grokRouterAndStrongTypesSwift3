//
//  Todo.swift
//  grok101
//
//  Created by Christina Moulton on 2016-10-29.
//  Copyright © 2016 Teak Mobile Inc. All rights reserved.
//

import Foundation

class Todo {
  var title: String
  var id: Int?
  var userId: Int
  var completed: Bool
  
  required init?(title: String, id: Int?, userId: Int, completedStatus: Bool) {
    self.title = title
    self.id = id
    self.userId = userId
    self.completed = completedStatus
  }
  
  func description() -> String {
    return "ID: \(self.id), " +
      "User ID: \(self.userId)" +
      "Title: \(self.title)\n" +
    "Completed: \(self.completed)\n"
  }
}
