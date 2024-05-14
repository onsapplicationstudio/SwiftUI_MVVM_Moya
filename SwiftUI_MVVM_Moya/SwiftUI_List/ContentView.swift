//
//  ContentView.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: UserViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(viewModel.users) {user in
                        UserCell(user: User(id: user.id,
                                            name: user.name,
                                            email: user.email,
                                            address: user.address,
                                            website: user.website))
                    }
                }
                
                .navigationTitle("User List")
            }
            .onAppear(perform: {
                viewModel.fetchUsers()
            })
            
            if viewModel.isLoading { LoadingView() }
        }
    }
}

#Preview {
    ContentView(viewModel: UserViewModel(apiClient: UserApiClient()))
}
