//
//  ContentView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedLocation = "Menomonie"
    @State var selectedEntree = "Chicken Parmagian"
    @State var selectedTime = "8 pm"
    
    let locations = [
    "Menomonie",
    "River Falls",
    "Ellsworth",
    "Maiden Rock"
    ]
    
    let entrees = [
    "Chicken Parmagian",
    "Big Steak",
    "Lobster",
    "Tofu"
    ]
    
    let times = [
    "5 pm",
    "6 pm",
    "7 pm",
    "8 pm"
    ]
    
    var body: some View {
        VStack() {
            Text("Ottimo Ristorante!")
                .font(.largeTitle.bold())
                .padding([.top, .bottom], 20)
            
            Text("Location: \(selectedLocation)")
                .font(.title.bold())
                .foregroundColor(.blue)
            
            Picker("Choose location", selection: $selectedLocation) {
                Text("Menomonie").tag("Menomonie")
                Text("River Falls").tag("River Falls")
                Text("Ellsworth").tag("Ellsworth")
                Text("Maiden Rock").tag("Maiden Rock")
            }
            .pickerStyle(.menu)
            
            Text("Entree: \(selectedEntree)")
                .font(.title.bold())
                .foregroundColor(.blue)
                .padding(.top, 50)
            
            Picker("Choose entree", selection: $selectedEntree) {
                Text("Chicken Parmagian").tag("Chicken Parmagian")
                Text("Big Steak").tag("Big Steak")
                Text("Lobster").tag("Lobster")
                Text("Tofu").tag("Tofu")
            }
            .pickerStyle(.wheel)
            
            Text("Pickup Time: \(selectedTime)")
                .font(.title.bold())
                .foregroundColor(.blue)
                .padding(.bottom, 20)
            
            Picker("Choose pickup time", selection: $selectedTime) {
                Text("5 pm").tag("5 pm")
                Text("6 pm").tag("6 pm")
                Text("7 pm").tag("7 pm")
                Text("8 pm").tag("8 pm")
            }
            .pickerStyle(.segmented)
            Spacer()
            
            Button("Choose for me!") {
                let randTown = Int.random(in: 0...3)
                selectedLocation = locations[randTown]
                let randEntree = Int.random(in: 0...3)
                selectedEntree = entrees[randEntree]
                let randTime = Int.random(in: 0...3)
                selectedTime = times[randTime]
                
            }
        }

    }

}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
