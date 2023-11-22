//
//  sidiKaoukiCarte.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI
import MapKit

struct MapSidiKaouki: View {
    let sidikaouki = CLLocationCoordinate2D(
            latitude: 31.35019,
            longitude: -9.79775

        )
        
        var region = MKCoordinateRegion(center: .init(latitude: 31.35019, longitude: -9.79775), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.0))
        
        var body: some View {
            
            VStack(spacing: 0){
                
                Image("SidiKaouki")
                Map(initialPosition: MapCameraPosition.region(region)) {
                    
                    Marker("Spot de Sidi Kaouki", systemImage: "figure.surfing", coordinate: sidikaouki)
                    
                }
            }
    }
}

#Preview {
    MapSidiKaouki()
}
