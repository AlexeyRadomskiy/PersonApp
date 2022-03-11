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
    let sport: Sport
    
    static func getUserInfo() -> User {
        User(
            login: "Swift",
            password: "qwe",
            userInfo: Profile.getUserInfo(),
            aboutUser: AboutUser.getAboutUserInfo(),
            education: Education.getEducation(),
            sport: Sport.getSport()
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
            university: "Bauman Moscow State Technical University 🥵",
            faculties: "Mechanical Engineering Technologies",
            departments: "Welding and non-destructive technologies 👨‍🏭",
            specialty: "Specialist in the field of diagnostics and life extension of welded structures ✅",
            yearsOfStudy: 6,
            topicOfDiploma: "Technology of laser-ultrasonic control of the cooling path of the nozzle for a liquid rocket engine 🚀",
            averageMark: 4.2,
            graduationYear: 2021
        )
    }
}

struct Sport {
    let type: [String]
    let description: [String]
    
    static func getSport() -> Sport {
        Sport(
            type: [
                "🥋 Karate 🥋",
                "🏂 Snowboarding 🏂",
                "🛹 Skateboarding 🛹",
                "🎾 Tennis 🎾",
                "⚽️ Football ⚽️",
                "🏀 Basketball 🏀",
                "🏔 Climbing 🏔"
            ],
        description: ["""
            • Experience: 10 years
            
            • Black belt - 1 dan.
            • More than 100 medals (gold/silver/bronze)
            • Winner and medalist of the World Cup
            • Winner of Russian Championships
            • Winner and prize winner in more than 10 countries
            """,
            """
            • Experience: 12 years
            
            • Trained more than 10 people from scratch in 3 days
            • Can freestyle on a flat
            • Riding in a snow park
            • Have a cool DC board
            • I listen to rock while riding
            """,
            """
            • Experience: 6 years
            
            • Can freestyle on a flat
            • Have a cool Russian custom board
            • I listen to rap while riding
            """,
            """
            • Experience: 2 years
            
            • Racket - Yonex
            • Favorite player - Nick Kiryos
            • Learned to play in a closed city - cosmodrome (Plesetsk)
            """,
            """
            • Experience: 18 years
            
            • My favourite club is Barcelona since 2008
            • Favourite National Team: Spain since 2008
            • Best Players: Messi, Fernando Torres and David Villa (no one to choose)
            • Played since childhood and still do
            """,
            """
            • Experience: 6 years
            
            • Played since childhood and still do
            • Even my parents beat me...
            """,
            """
            • Experience: 2 years
            
            • I've been to Cape Bold twice, on Sakhalin Island.
            • This is just the beginning!
            """
        ])
    }
}
