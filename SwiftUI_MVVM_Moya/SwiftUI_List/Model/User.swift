//
//  User.swift
//  SwiftUIListView
//
//  Created by Abhinay Maurya on 28/04/24.
//

import Foundation

struct User: Identifiable {
    let id: Int
    let name: String?
    let email: String?
    let address: Address?
    let website: String?
}

struct Address: Codable {
    let city: String?
}

extension User: Codable {
    enum CodingKeys: String, CodingKey {
        case id, name, email, address, website
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.email = try container.decodeIfPresent(String.self, forKey: .email)
        self.address = try container.decodeIfPresent(Address.self, forKey: .address)
        self.website = try container.decodeIfPresent(String.self, forKey: .website)
    }
}
