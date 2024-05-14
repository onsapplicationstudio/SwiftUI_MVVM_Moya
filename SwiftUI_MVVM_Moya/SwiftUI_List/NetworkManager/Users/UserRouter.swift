//
//  UserService.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import Foundation
import Moya

enum UserRouter {
    case fetchUsers
}

extension UserRouter: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Constant.API.baseURL) else {
            fatalError()
        }
        
        return url
    }
    
    var path: String {
        switch self {
        case .fetchUsers:
            return "users"
        }
    }
    
    var method: Moya.Method {
        .get
    }
    
    var task: Moya.Task {
        switch self {
        case .fetchUsers:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
}
