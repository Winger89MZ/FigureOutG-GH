//
//  ContentView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomColor = [
        Color.blue, Color.red, Color.green, Color.yellow,
        Color.orange, Color.cyan, Color.pink, Color.mint]
    
    var body: some View {
        GeometryReader { g in
            
            TabView {
                ForEach(0..<50) { j in
                    let randIndex = Int.random(in: 0...7)
                    
                    Rectangle()
                        .fill(randomColor[randIndex])
                        .frame(width: g.size.width - 40,
                               height: g.size.height - 100)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 10, x: -5, y: 5)
                        .overlay(
                            Image(systemName: "\(j+1).circle"))
                        .font(.system(size: 250))
                    
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }

    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
