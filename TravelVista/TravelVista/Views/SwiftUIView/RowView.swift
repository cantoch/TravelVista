//
//  RowView.swift
//  TravelVista
//
//  Created by Renaud Leroy on 04/11/2025.
//

import SwiftUI

struct RowView: View {
    @ObservedObject var vm: TitleViewModel
    
    var body: some View {
        HStack {
            Image(vm.pictureName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(.circle)
                .clipped()
            VStack(alignment: .leading) {
                Text(vm.name)
                    .font(.system(size: 20))
                    .foregroundColor(.customBlue)
                Text(vm.capital)
                    .font(.system(size: 15))
                    .padding(.bottom, 5)
            }
            Spacer()
            HStack(spacing: 4) {
                Text("\(vm.rate)")
                    .font(.system(size: 17))
                Image(systemName: "star.fill")
                    .foregroundColor(Color(.customSand))
                    .font(Font.title2.bold())
                    .padding(5)
            }
        }
    }
}

#Preview("RowView") {
    let sampleCountry = Country(
        name: "Vietnam",
        capital: "Hanoi",
        description: "The city of lights and fine cuisine.",
        rate: 4,
        pictureName: "vietnam",
        coordinates: .init(latitude: 48.8566, longitude: 2.3522)
    )
    let vm = TitleViewModel(country: sampleCountry)
    RowView(vm: vm)
}
