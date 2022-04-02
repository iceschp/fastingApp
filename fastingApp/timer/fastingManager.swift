//
//  fastingManager.swift
//  fastingApp
//
//  Created by Warunya on 2/4/2565 BE.
//

import Foundation

enum FastingState {
    case notStarted
    case fasting
    case feeding
}

class FastingManager: ObservableObject {
    @Published private(set) var fastingState: FastingState = .notStarted
}
