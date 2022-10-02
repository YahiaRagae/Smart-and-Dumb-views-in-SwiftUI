//
//  Message.swift
//  Smart-and-Dumb-views-in-SwiftUI
//
//  Created by Yahia on 3/10/22.
//

import Foundation
struct Message: Codable, Hashable {
    var sentAt: Date
    var content: String
}
