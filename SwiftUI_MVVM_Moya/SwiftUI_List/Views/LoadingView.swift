//
//  LoadingView.swift
//  SwiftUIProgressView
//
//  Created by Abhinay Maurya on 26/04/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            ProgressView()
                .progressViewStyle(.circular)
                .scaleEffect(2.5)
                .tint(.blue)
        }
    }
}

#Preview {
    LoadingView()
}
