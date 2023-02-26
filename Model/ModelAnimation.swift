//
//  ModelAnimation.swift
//  SpringApp3.1
//
//  Created by Dinar on 26.02.2023.
//

import Foundation

struct Animation {
    
    let nameAnimation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    // Не получается добавить округление до сотых с помощью String(format: "%.2f") к force, duration и delay, выдает ошибку что невозможно привести к типу String O_o. Я пишу так: .../(force = Sting(format: "%.2f")),..
    var descriptionForAnimation: String {
        "\n name: \(nameAnimation), \n curve: \(curve), \n force: \(force), \n duration: \(duration), \n delay: \(delay)"
    }
    
    static func getAnimation() -> Animation {
        Animation(
            nameAnimation: DataStore.shared.animation.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animation.randomElement()?.rawValue ?? "",
            force: .random(in: 0.3...1.5),
            duration: .random(in: 1...2),
            delay: .random(in: 0.2...0.8)
        )
    }
    // Еще вопрос. Если вот я хочу порабоать над самим текстом (например изменить цвет) то есть над nameAnimation, curve  и тд где мне это делать и как? 
}


    
        

