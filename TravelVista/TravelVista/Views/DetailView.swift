//
//  DetailView.swift
//  TravelVista
//
//  Created by Renaud Leroy on 05/11/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    let country: Country
    
    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let viewController = storyboard.instantiateViewController(
            withIdentifier: "DetailViewController"
        ) as? DetailViewController else {
            fatalError("Erreur de conversion")
        }
        viewController.country = country
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        
    }
}

