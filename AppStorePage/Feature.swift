//
//  Feature.swift
//  AppStorePage
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import Foundation

struct Feature: Decodable {
    let type: String
    let appName: String
    let description: String
    let imageURL: String
}
