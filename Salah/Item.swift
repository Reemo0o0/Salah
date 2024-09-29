//
//  Item.swift
//  Salah
//
//  Created by Reem Alotaibi on 26/03/1446 AH.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
