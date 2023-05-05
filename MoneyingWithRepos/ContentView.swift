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
        VStack(spacing: 0) {
                GeometryReader { g in
                    Rectangle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            print("global x: \(g.frame(in: .global).minX), \(g.frame(in: .global).midX),  \(g.frame(in: .global).maxX)")
                            print("global y: \(g.frame(in: .global).minY), \(g.frame(in: .global).midY),  \(g.frame(in: .global).maxY)")
                            print("local x: \(g.frame(in: .local).minX), \(g.frame(in: .local).midX),  \(g.frame(in: .global).maxX)")
                            print("local y: \(g.frame(in: .local).minY), \(g.frame(in: .local).midY),  \(g.frame(in: .global).maxY)")
                        }.position(x: 200, y: 200)
                }
                    GeometryReader { g in
                        Rectangle()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.green)
                            .onTapGesture {
                                print("global x: \(g.frame(in: .global).minX), \(g.frame(in: .global).midX),  \(g.frame(in: .global).maxX)")
                                print("global y: \(g.frame(in: .global).minY), \(g.frame(in: .global).midY),  \(g.frame(in: .global).maxY)")
                                print("local x: \(g.frame(in: .local).minX), \(g.frame(in: .local).midX),  \(g.frame(in: .local).maxX)")
                                print("local y: \(g.frame(in: .local).minY), \(g.frame(in: .local).midY),  \(g.frame(in: .local).maxY)")
                            }
                            .position(x: 200, y: 200)
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
