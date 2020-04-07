//
//  ContentView.swift
//  Moonshot
//
//  Created by Al Amin on 6/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (0..<50){ row in
                NavigationLink(destination: Text("Detail\(row)")){
                    Text("Row \(row)")
                }
            }
        .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
