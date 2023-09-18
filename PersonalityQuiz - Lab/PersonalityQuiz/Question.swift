//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Everett Brothers on 9/18/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", monkey = "🙊", cat = "🐱", bird = "🕊️"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly out going and love the outdoors with friends"
        case .monkey:
            return "You are healthy and full of energy"
        case .cat:
            return "You are mild-tempered and mischievous"
        case .bird:
            return "You are wise and free"
        }
    }
}

enum ResponseType {
    case single, multiple, ranged
}
