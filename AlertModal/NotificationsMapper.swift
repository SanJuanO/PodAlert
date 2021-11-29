//
//  Notifications.swift
//  Heartland Splenda
//
//  Created by Edgar Gerardo Flores Lopez on 26/01/21.
//  Copyright © 2021 Edgar Gerardo Flores Lopez. All rights reserved.
//

import Foundation

struct Notifications: Decodable {
    let data: DataMapper
}

struct DataMapper: Codable {
    let notifications: [NotificationsMapper]
}

struct NotificationsMapper: Codable {
    let title: String
    let date: String
    let body: String
    
    private enum CodingKeys: String, CodingKey {
        case title, date, body
    }
}
