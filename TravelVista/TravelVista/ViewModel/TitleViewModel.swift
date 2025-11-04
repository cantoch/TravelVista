//
//  TitleViewModel.swift
//  TravelVista
//
//  Created by Renaud Leroy on 03/11/2025.
//

import Foundation

final class TitleViewModel: ObservableObject {
    @Published var country: Country
    
    var name: String {country.name}
    var capital: String {country.capital}
    var description: String {country.description}
    var rate: Int {country.rate}
    var pictureName: String {country.pictureName}
    var coordinates: Coordinates {country.coordinates}
    
    init(country: Country) {
        self.country = country
    }
}
