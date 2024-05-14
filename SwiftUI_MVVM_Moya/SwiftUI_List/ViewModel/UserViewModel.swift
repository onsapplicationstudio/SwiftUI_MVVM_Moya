//
//  UserViewModel.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import Foundation

final class UserViewModel: ObservableObject {
    //MARK: private Properties
    private let apiClient: UserApiClientProtocol
    
    @Published var users = [User]()
    @Published var isLoading = false
    
    //MARK: Init
    init(apiClient: UserApiClientProtocol) {
        self.apiClient = apiClient
    }
    
    //MARK: Public Properties
    var refreshScreen: (() -> Void)?
    var showErrorMessage: ((String) -> Void)?
    
    //MARK: Public Methods
    func fetchUsers() {
        self.users.removeAll()
        self.isLoading = true
        apiClient.fetchUsers {[weak self] result in
            defer { self?.isLoading = false }
            switch result {
            case .success(let users):
                self?.users = users
            case .failure(let error):
                self?.showErrorMessage?(error.localizedDescription)
            }
        }
    }
}
