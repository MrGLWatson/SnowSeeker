//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Gary Watson on 17/08/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//

import SwiftUI

struct SkiDetailsView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            Text("Elevation: \(resort.elevation)m")
                .layoutPriority(1)
            Spacer().frame(height: 0)
            Text("Snow: \(resort.snowDepth)cm")
                .layoutPriority(1)
        }
        
    }
}

struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}
