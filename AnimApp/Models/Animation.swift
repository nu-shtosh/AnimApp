//
//  Animation.swift
//  AnimApp
//
//  Created by Илья Дубенский on 02.11.2022.
//


struct Animation {

    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float

    static func getRandomAnimation() -> Animation {
        let name = DataStore.shared.animations.randomElement()?.rawValue
        let curve = DataStore.shared.curves.randomElement()?.rawValue
        return Animation(
            name: name ?? "pop",
            curve: curve ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...3),
            delay: Float.random(in: 0.2...0.4)
        )
    }
}
