//
//  fastingManager.swift
//  fastingApp
//
//  Created by Warunya on 2/4/2565 BE.
//

import Foundation

enum fastingState {
    case notStarted
    case fasting
    case feeding
}

class fastingManager: ObservableObject {
    @Published private(set) var fastingState: fastingState = .notStarted
}
