//
//  Constant.swift
//  SwiftUI_List
//
//  Created by Abhinay Maurya on 14/05/24.
//

import Foundation

enum Constant {
    static let isProductionEnable = true
    
    enum API {
        static let baseURL = isProductionEnable ? API.Production.baseURL : API.Development.baseURL
        
        enum Development {
            static let baseURL = "https://jsonplaceholder.typicode.com/"
        }
        
        enum Production {
            static let baseURL = "https://jsonplaceholder.typicode.com/"
        }
    }
}
