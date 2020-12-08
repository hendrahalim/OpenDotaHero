//
//  AttackType.swift
//  OpenDota
//
//  Created by Hendra Halim on 06/12/20.
//

import Foundation

enum AttackType: String, Codable {
    case melee = "Melee"
    case ranged = "Ranged"
    
    static func get(identifier: String) -> AttackType? {
        return AttackType(rawValue: identifier)
    }
}
