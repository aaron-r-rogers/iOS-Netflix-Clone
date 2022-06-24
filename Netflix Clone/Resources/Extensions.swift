//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Aaron Rogers on 6/17/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        var components = self.components(separatedBy: " ")
        for var singleComponent in components {
            if (singleComponent.count == 2) {
                singleComponent = singleComponent.uppercased()
                components.append(singleComponent)
            } else {
                singleComponent = singleComponent.lowercased().capitalized
                components.append(singleComponent)
            }
        }
        if (components.count == 4) {
            components.removeSubrange(0...1)
        } else {
            components.remove(at: 0)
        }
        return components.joined(separator: " ")
    }
}
