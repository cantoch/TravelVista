//
//  ListView.swift
//  TravelVista
//
//  Created by Renaud Leroy on 04/11/2025.
//

import SwiftUI

struct ListView: View {
    @StateObject var vm = ListViewModel()
     
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.regions) { region in
                    Section(header: Text(region.name)) {
                        ForEach (region.countries, id: \.name) { country in
                            NavigationLink(destination: DetailView(country: country)) {
                                RowView(vm: TitleViewModel(country: country))
                            }
                            .navigationLinkIndicatorVisibility(.hidden)
                            .frame(maxHeight: 45)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Liste de voyages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let vm = ListViewModel()
    vm.regions = [
        Region(id: UUID(), name: "Europe", countries: [
            Country(name: "France", capital: "Paris", description: "Ville lumière", rate: 5, pictureName: "vietnam", coordinates: Coordinates(latitude: 48.8566, longitude: 2.3522)),
            Country(name: "Germany", capital: "Berlin", description: "Land of poets and thinkers", rate: 4, pictureName: "vietnam", coordinates: Coordinates(latitude: 52.52, longitude: 13.405)),
            Country(name: "Italy", capital: "Rome", description: "The Eternal City", rate: 5, pictureName: "vietnam", coordinates: Coordinates(latitude: 41.9028, longitude: 12.4964)),
            Country(name: "Spain", capital: "Madrid", description: "Passionate and vibrant", rate: 4, pictureName: "vietnam", coordinates: Coordinates(latitude: 40.4168, longitude: -3.7038))
        ]),
        Region(id: UUID(), name: "Asia", countries: [
            Country(name: "Japan", capital: "Tokyo", description: "Land of the Rising Sun", rate: 5, pictureName: "japan", coordinates: Coordinates(latitude: 35.6762, longitude: 139.6503)),
            Country(name: "China", capital: "Beijing", description: "Ancient and modern", rate: 4, pictureName: "china", coordinates: Coordinates(latitude: 39.9042, longitude: 116.4074)),
            Country(name: "Thailand", capital: "Bangkok", description: "Land of Smiles", rate: 4, pictureName: "thailand", coordinates: Coordinates(latitude: 13.7563, longitude: 100.5018)),
            Country(name: "India", capital: "New Delhi", description: "Diverse and colorful", rate: 5, pictureName: "india", coordinates: Coordinates(latitude: 28.6139, longitude: 77.2090))
        ]),
        Region(id: UUID(), name: "Africa", countries: [
            Country(name: "Egypt", capital: "Cairo", description: "Gift of the Nile", rate: 4, pictureName: "egypt", coordinates: Coordinates(latitude: 30.0444, longitude: 31.2357)),
            Country(name: "South Africa", capital: "Pretoria", description: "Rainbow Nation", rate: 5, pictureName: "southafrica", coordinates: Coordinates(latitude: -25.7461, longitude: 28.1881)),
            Country(name: "Morocco", capital: "Rabat", description: "Gateway to Africa", rate: 4, pictureName: "morocco", coordinates: Coordinates(latitude: 34.0209, longitude: -6.8416)),
            Country(name: "Kenya", capital: "Nairobi", description: "Safari adventure", rate: 5, pictureName: "kenya", coordinates: Coordinates(latitude: -1.2921, longitude: 36.8219))
        ]),
        Region(id: UUID(), name: "Americas", countries: [
            Country(name: "United States", capital: "Washington, D.C.", description: "Land of opportunity", rate: 4, pictureName: "usa", coordinates: Coordinates(latitude: 38.9072, longitude: -77.0369)),
            Country(name: "Brazil", capital: "Brasilia", description: "Vast and diverse", rate: 5, pictureName: "brazil", coordinates: Coordinates(latitude: -15.8267, longitude: -47.9218)),
            Country(name: "Canada", capital: "Ottawa", description: "Great white north", rate: 4, pictureName: "canada", coordinates: Coordinates(latitude: 45.4215, longitude: -75.6997)),
            Country(name: "Argentina", capital: "Buenos Aires", description: "Land of silver", rate: 4, pictureName: "argentina", coordinates: Coordinates(latitude: -34.6037, longitude: -58.3816))
        ])
    ]
    return ListView(vm: vm)
}
