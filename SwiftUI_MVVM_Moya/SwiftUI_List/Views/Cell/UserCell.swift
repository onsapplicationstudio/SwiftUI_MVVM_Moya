//
//  UserCell.swift
//  SwiftUIListView
//
//  Created by Abhinay Maurya on 28/04/24.
//

import SwiftUI

struct UserCell: View {
    let user: User
    
    var body: some View {
        VStack {
            UserDetailDescription(leftTitle: "Name",
                                  rightTitle: user.name ?? "",
                                  valueColor: .orange)
            UserDetailDescription(leftTitle: "Email",
                                  rightTitle: user.email ?? "",
                                  valueColor: .brown)
            UserDetailDescription(leftTitle: "City",
                                  rightTitle: user.address?.city ?? "",
                                  valueColor: .green)
            UserDetailDescription(leftTitle: "Website",
                                  rightTitle: user.website ?? "",
                                  valueColor: .blue)
            
        }
    }
}

#Preview {
    UserCell(user: User(id: 1, name: "Abhinay", email: "abhinay@gmail.com", address: Address(city: "Indoor"), website: "abhinay.com"))
}
