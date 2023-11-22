//
//  ListSpotView1.swift
//  FindMySpotGroup
//
//  Created by Nayeff BOINARIZIKI on 05/11/2023.
//

import SwiftUI

struct ListSpotView1: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    NavigationLink(destination: SpotDetailView(imageName: "Spot1", spotName: "Imsouane")) {
                        SpotRow1(imageName: "Spot1", spotName: "Imsouane")
                    }
                    NavigationLink(destination: SpotsAlternatifs()) {
                        SpotRow1(imageName: "Spot2", spotName: "Essaouira")
                    }
                    NavigationLink(destination: SpotDetailView(imageName: "Spot3", spotName: "Taghazout")) {
                        SpotRow1(imageName: "Spot3", spotName: "Taghazout")
                    }
                }
                .padding(.horizontal)
                .navigationTitle("Maroc")
            }
        }
    }
}

struct SpotRow1: View {
    var imageName: String
    var spotName: String

    var body: some View {
        
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .frame(height: 158)
                .cornerRadius(10)

            Text(spotName)
                .font(.title)
                .foregroundColor(.primary)
                .padding(.top, 5)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct SpotDetailView: View {
    var imageName: String
    var spotName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(height: 200)
                .cornerRadius(10)

            Text(spotName)
                .font(.title)
                .foregroundColor(.primary)
        }
        .navigationTitle(spotName)
    }
}

struct ContentView1: View {
    var body: some View {
        ListSpotView1()
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

