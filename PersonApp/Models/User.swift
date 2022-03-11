//
//  User.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

struct User {
    let login: String
    let password: String
    let userInfo: Profile
    let aboutUser: AboutUser
    
    static func getUserInfo() -> User {
        User(
            login: "Swift",
            password: "qwe",
            userInfo: Profile.getUserInfo(),
            aboutUser: AboutUser.getAboutUserInfo()
        )
    }
}

struct Profile {
    let name: String
    let surname: String
    let photo: String
    
    static func getUserInfo() -> Profile {
        Profile(
            name: "Alexey",
            surname: "Radomskiy",
            photo: "ProfilePhoto"
        )
    }
}

struct AboutUser {
    let age: Int
    let sex: String
    let birthPlace: String
    let cityOfResidence: String
    let favoriteMusicBand: String
    let favoriteColor: String
    
    static func getAboutUserInfo() -> AboutUser {
        AboutUser(
            age: 23,
            sex: "male 🧑‍💻",
            birthPlace: "Sakhalin Island 🏝",
            cityOfResidence: "Moscow 🌃",
            favoriteMusicBand: "Guns and Roses 🤘",
            favoriteColor: "Red - 🔴"
        )
    }
}
