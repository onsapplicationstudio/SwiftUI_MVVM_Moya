//
//  UserDetailDescription.swift
//  SwiftUIListView
//
//  Created by Abhinay Maurya on 28/04/24.
//

import SwiftUI

struct UserDetailDescription: View {
    let leftTitle: String
    let rightTitle: String
    var valueColor: Color = .black
    
    var body: some View {
        HStack(spacing: 5, content: {
            Text("\(leftTitle):")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            Text(rightTitle)
                .font(.title2)
                .fontWeight(.regular)
                .foregroundStyle(valueColor)
            Spacer()
        })
        .padding([.trailing], 16)
        .padding([.bottom], 5)
    }
}

#Preview {
    UserDetailDescription(leftTitle: "Name",
                          rightTitle: "Abhinay",
                          valueColor: .blue)
}
