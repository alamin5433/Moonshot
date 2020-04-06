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
        VStack{
            GeometryReader { geo in
                Image("romania")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
                // .clipped()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
