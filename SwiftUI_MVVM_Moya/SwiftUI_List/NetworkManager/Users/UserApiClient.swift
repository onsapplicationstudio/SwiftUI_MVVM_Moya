//
//  UserApiClient.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import Foundation
import Moya

protocol UserApiClientProtocol: AnyObject {
    func fetchUsers(handler: @escaping (Result<[User], APIError>) -> Void)
}

final class UserApiClient: UserApiClientProtocol {
    private let jsonDecoder = JSONDecoder()
    private lazy var provider: MoyaProvider<UserRouter> = {
        MoyaProvider<UserRouter>()
    }()
    
    func fetchUsers(handler: @escaping (Result<[User], APIError>) -> Void) {
        provider.request(.fetchUsers,
                         completion: { result in
            switch result {
            case let .success(response):
                do {
                    let response = try self.jsonDecoder.decode([User].self,
                                                               from: response.data)
                    handler(.success(response))
                } catch {
                    handler(.failure(APIError.parsingFailed))
                }
                
            case let .failure(error):
                guard let _ = error.response else {
                    handler(.failure(.custom(message: error.localizedDescription)))
                    return
                }
                
                handler(.failure(.custom(message: error.localizedDescription)))
            }
        })
    }
}
 
