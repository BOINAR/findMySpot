//
//  SpotsPrincipaux.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import Foundation
import MapKit

struct SpotsPrincipaux : Identifiable {
    var id = UUID()
    let spotVille: String
    let coordinate : CLLocationCoordinate2D
}
