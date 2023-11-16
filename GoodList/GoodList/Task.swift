//
//  Task.swift
//  GoodList
//
//  Created by Illia Rahozin on 15.11.2023.
//

import Foundation

enum Priority: Int {
    case high, medium, low
}

struct Task {
    let title: String
    let prority: Priority
}
