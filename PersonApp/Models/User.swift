//
//  User.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

struct User {
    let login: String
    let password: String
    let userInfo: UserInfo
    
    static func getUserInfo() -> User {
        User(
            login: "Swift",
            password: "qwe",
            userInfo: UserInfo.getUserInfo()
        )
    }
}

struct UserInfo {
    let name: String
    let surname: String
    let age: Int
    let photo: String
    
    static func getUserInfo() -> UserInfo{
        UserInfo(
            name: "Alexey",
            surname: "Radomskiy",
            age: 23,
            photo: "ProfilePhoto"
        )
    }
}
