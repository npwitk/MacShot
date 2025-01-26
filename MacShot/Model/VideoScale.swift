//
//  VideoScale.swift
//  MacShot
//
//  Created by Nonprawich I. on 26/1/25.
//

import Foundation

enum VideoScale: Int, CaseIterable {
    case normal = 1
    case high = 2
    
    var stringValue: String {
        switch self {
        case .normal:
            return "1x"
        case .high:
            return "2x"
        }
    }
}
