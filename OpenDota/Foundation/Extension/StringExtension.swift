//
//  StringExtension.swift
//  OpenDota
//
//  Created by Hendra Halim on 05/12/20.
//

import Foundation

extension String {
    func toURL() -> URL? {
        return URL(string: self)
    }
}
