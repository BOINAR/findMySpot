//
//  ContentView.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            EcranMapEntree()
                        .tabItem {
                            Label(
                                title: { Text("Map") },
                                icon: { Image(systemName: "globe")}
                            )
                        }
                     PaysList()
                        .tabItem {
                            Label(
                                title: { Text("Pays") },
                                icon: { Image(systemName: "globe.europe.africa")}
                            )
                        }
            DiscoveryView()
               .tabItem {
                   Label(
                       title: { Text("Wave info") },
                       icon: { Image(systemName: "info.circle")}
                   )
               }
            mesFavoris()
               .tabItem {
                   Label(
                       title: { Text("Favoris") },
                       icon: { Image(systemName: "heart")}
                   )
               }
                }

    }
}

#Preview {
    ContentView()
}
