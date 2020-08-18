//
//  Facility.swift
//  SnowSeeker
//
//  Created by Gary Watson on 18/08/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String
    var icon: some View {
        let icons = [
            "Accommodation": "house",
            "Beginners": "1.circle",
            "Cross-country": "map",
            "Eco-friendly": "leaf.arrow.circlepath",
            "Family": "person.3"
        ]
        
        if let iconName = icons[name] {
            let image = Image(systemName: iconName)
                .accessibility(label: Text(name))
                .foregroundColor(.secondary)
            return image
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
    
    var alert: Alert {
        let messages = [
            "Accommodation": "This resort has popular on-site accommodation",
            "Beginners": "This resort has lots of beginners",
            "Cross-country": "This has many cross-country ski routes",
            "Eco-friendly": "This resort has won an award for environmental friendliness",
            "Family": "This resport is popular with families"]
        
        if let message = messages[name] {
            return Alert(title: Text(name), message: Text(message))
        } else {
            fatalError("Unknown facility type \(name)")
        }
    }
}
