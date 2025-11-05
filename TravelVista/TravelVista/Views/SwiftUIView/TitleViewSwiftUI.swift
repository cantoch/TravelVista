//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Renaud Leroy on 01/11/2025.
//

import SwiftUI
import Foundation

struct TitleViewSwiftUI: View {
    @ObservedObject var vm: TitleViewModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(vm.name)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(.customBlue)
                
                Text(vm.capital)
                    .font(.system(size: 17))
                    .foregroundColor(.gray)
            }
            Spacer()
            HStack(spacing: 4) {
                ForEach(0..<vm.rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.yellow)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview("TitleView") {
    let sampleCountry = Country(
        name: "France",
        capital: "Paris",
        description: "The city of lights and fine cuisine.",
        rate: 4,
        pictureName: "france",
        coordinates: .init(latitude: 48.8566, longitude: 2.3522)
    )
    let vm = TitleViewModel(country: sampleCountry)
    TitleViewSwiftUI(vm: vm)
}


