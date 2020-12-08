//
//  URLUtil.swift
//  OpenDota
//
//  Created by Hendra Halim on 05/12/20.
//

import Foundation

class URLUtil {
    static func toOpenDotaURL(from urlString: String?) -> URL? {
        guard let urlString = urlString else { return nil }
        return "\(openDotaBaseUrl)\(urlString)".toURL()
    }
}
