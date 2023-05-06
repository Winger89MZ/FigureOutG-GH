//
//  ContentView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PeopleView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("People")
                    }
                }
            PreferencesView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
        }
        .environmentObject(People())
    }
}

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var company: String
    var yearsExperience: Int
}

class People: ObservableObject {
    @Published var people = [Person]()
    @Published var showNames = true
    @Published var showAddresses = true
    @Published var showCompanies = true
    @Published var showYearsExperience = true
    
    init() {
        let person1 = Person(
            name: "Biff J. Biffson",
            address: "123 Monkey Lane, Wowville, MO",
            company: "Acme Bananas",
            yearsExperience: 17
        ); people.append(person1)
        let person2 = Person(
            name: "Bonnie B. Goode",
            address: "321 Baboon Street, Ughville, KS",
            company: "Ajax Bananas",
            yearsExperience: 8
        ); people.append(person2)
        let person3 = Person(
            name: "Elmo Spiffer",
            address: "40 Undada Bridge, Luckytown, NE",
            company: "Bananas R Us",
            yearsExperience: 43
        ); people.append(person3)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
