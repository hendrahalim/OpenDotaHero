//
//  NSObjectExtension.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import Foundation

extension NSObject {
    func className() -> String {
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last ?? ""
    }
    
    static func className() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}
