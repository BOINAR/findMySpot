//
//  SpotsView.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 06/11/2023.
//

import Foundation

struct Spot: Identifiable {
    var id = UUID()
    var spotName: String
    var spotPicture: String
}

 // struct SpotsView: View {
  //  var surfSpots: [Spot] = [
  //      Spot(spotName: "Essaouira", spotPicture: "Esa"),
   //     Spot(spotName: "Anchor Point", spotPicture: "ApZ"),
  //      Spot(spotName: "Cap Sim", spotPicture: "Cs"),
  //      Spot(spotName: "Imsouane", spotPicture: "Is"),
  //      Spot(spotName: "Sidi Kaouki", spotPicture: "Sk")
  //  ]

  //  var body: some View {
  //      NavigationView {
   //         List(surfSpots) { spot in
   //             NavigationLink(destination: SpotDetailView(spot: spot)) {
   //                 SpotRow(spot: spot)
   //             }
   //         }
    //        .navigationBarTitle("Surf Spots")
   //     }
 //   }
//}
