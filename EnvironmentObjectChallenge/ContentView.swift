//
//  ContentView.swift
//  EnvironmentObjectChallenge
//
//  Created by Micah Beech on 2021-02-28.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        TabView {
            
            VStack {
                Text("People")
                    .font(.title)
                    .bold()
                
                List(model.people) { person in
                    PersonView(person: person)
                }
            }
            .tabItem { Image(systemName: "person.2") }
            
            VStack {
                Text("Display Preferences")
                    .font(.largeTitle)
                    .bold()
                
                Toggle("Show Name", isOn: $model.showName)
                
                Toggle("Show Address", isOn: $model.showAddress)
                
                Toggle("Show Company", isOn: $model.showCompany)
                
                Toggle("Show years of experience", isOn: $model.showYears)
                
                Spacer()
            }
            .tabItem { Image(systemName: "gearshape") }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
            .environmentObject(Model())
    }
}
