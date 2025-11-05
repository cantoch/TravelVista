//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Renaud Leroy on 04/11/2025.
//

import Foundation

final class ListViewModel: ObservableObject {
    @Published var regions: [Region] = []
    
    let service = Service()
    
    init() {
        loadRegions()
    }
    
    func loadRegions() {
       regions = service.load("Source.json")
    }
}
