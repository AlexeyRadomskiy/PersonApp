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
    let education: Education
    
    static func getUserInfo() -> User {
        User(
            login: "Swift",
            password: "qwe",
            userInfo: Profile.getUserInfo(),
            aboutUser: AboutUser.getAboutUserInfo(),
            education: Education.getEducation()
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

struct Education {
    let university: String
    let faculties: String
    let departments: String
    let specialty: String
    let yearsOfStudy: Int
    let topicOfDiploma: String
    let averageMark: Double
    let graduationYear: Int
    
    static func getEducation() -> Education {
        Education(
            university: "Bauman Moscow State Technical University",
            faculties: "Mechanical Engineering Technologies",
            departments: "Welding and non-destructive technologies",
            specialty: "Specialist in the field of diagnostics and life extension of welded structures",
            yearsOfStudy: 6,
            topicOfDiploma: "Technology of laser-ultrasonic control of the cooling path of the nozzle for a liquid rocket engine",
            averageMark: 4.2,
            graduationYear: 2021
        )
    }
}
