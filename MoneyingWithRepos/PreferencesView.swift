//
//  PreferencesView.swift
//  MoneyingWithRepos
//
//  Created by Laurence Stone on 5/5/23.
//

import SwiftUI

struct PreferencesView: View {
    @EnvironmentObject var thesePeople: People
    
    var body: some View {
        VStack {
            Toggle("Show name", isOn: $thesePeople.showNames)
            Toggle("Show address", isOn: $thesePeople.showAddresses)
            Toggle("Show company", isOn: $thesePeople.showCompanies)
            Toggle("Show years of experience", isOn: $thesePeople.showYearsExperience)
        }
        .padding(.horizontal)
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static let myEnvObject = People()
    static var previews: some View {
        PreferencesView()
            .environmentObject(myEnvObject)
    }
}
