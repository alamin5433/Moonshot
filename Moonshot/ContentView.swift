//
//  ContentView.swift
//  Moonshot
//
//  Created by Al Amin on 6/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let astronauts:[Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        NavigationView {
            
            List(missions){ mission in
                NavigationLink(destination: Text("Detail View")){
                    Image(mission.image)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading){
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.launchDate ?? "N/A")
                    }
                }
            }
            .navigationBarTitle("Moonshot")
        
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

