//
//  ContentView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            ForEach(0...40, id: \.self) { j in
                Rectangle()
                    .fill(RadialGradient(
                        gradient: Gradient(colors: [.orange, .red]),
                        center: UnitPoint(x: 0.25, y: 0.75),
                        startRadius: 0,
                        endRadius: 200
                    ))
                    .frame(height: 100 * pow(1.1, Double(j)))
                    .cornerRadius(10)

            }
        }

    }

}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
