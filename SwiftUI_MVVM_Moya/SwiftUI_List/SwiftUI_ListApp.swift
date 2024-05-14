//
//  SwiftUI_ListApp.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import SwiftUI

@main
struct SwiftUI_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: UserViewModel(apiClient: UserApiClient()))
        }
    }
}
