//
//  ContentView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 1
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Text("This tab's tag is \(tabIndex)")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(1)  //tabIndex=0 means this one
            
            Button("Take me to Tab #3!") {
                print("cmon man")
                tabIndex = 3
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrowshape.right")
                    Text("Tab 2")
                }
                .tag(2)
            }
            
            List {
                ForEach(0..<100) { _ in
                    Text("This is tab 3!")
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }
            .tag(3)
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
