//
//  APIError.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import Foundation

enum APIError: Error {
    case parsingFailed
    case somethingWentWrong
    case custom(message: String)
}
