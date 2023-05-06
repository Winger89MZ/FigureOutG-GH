//
//  PeopleView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/5/23.
//

import SwiftUI

struct PeopleView: View {
    @EnvironmentObject var thesePeople: People
    
    var body: some View {
        List(thesePeople.people) { person in
            VStack(alignment: .leading) {
                if thesePeople.showNames {Text(person.name) }
                if thesePeople.showAddresses { Text(person.address) }
                if thesePeople.showCompanies { Text(person.company) }
                if thesePeople.showYearsExperience { Text(String(person.yearsExperience) + " years of experience") }
            }
            
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static let myEnvObject = People()
    static var previews: some View {
        PeopleView()
            .environmentObject(myEnvObject)
    }
}
