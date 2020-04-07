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
            Button("Decode JSON") {
                let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555, Taylor Swift Avenue",
                        "city": "Nashville"
                    }
                }
                """

                let data = Data(input.utf8)
                let decoder = JSONDecoder()
                if let user = try? decoder.decode(User.self, from: data){
                    print(user.address.street)
                }
            }
        .navigationBarTitle("SwiftUI")
        }
    }
    
    struct User: Codable {
        var name: String
        var address: Address
    }
    
    struct Address: Codable {
        var street: String
        var city: String
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

