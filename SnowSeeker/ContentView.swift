//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Gary Watson on 16/08/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("New secondary")) {
            Text("Hello World!")
            }
            .navigationBarTitle("Primary")
            Text("Secondary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
