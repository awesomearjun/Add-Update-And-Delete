//
//  PersonView.swift
//  EnvironmentObjectChallenge
//
//  Created by Micah Beech on 2021-02-28.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var model: Model
    var person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if model.showName {
                Text("Name: \(person.name)")
            }
            
            if model.showAddress {
                Text("Address: \(person.address)")
            }
            
            if model.showCompany {
                Text("Company: \(person.company)")
            }
            
            if model.showYears {
                Text("Years of Experience: \(person.yearsOfExperience)")
            }
        
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(
            name: "Mamma Mia",
            address: "123 Candy Lane",
            company: "CodeWithChris",
            yearsOfExperience: 99
        )).environmentObject(Model())
    }
}
