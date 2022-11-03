//
//  DataStore.swift
//  AnimApp
//
//  Created by Илья Дубенский on 02.11.2022.
//
import SpringAnimation

class DataStore {

    static let shared = DataStore()

    var animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases

    private init() {}
}
