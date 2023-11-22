//
//  EcranMapEntree.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI
import MapKit

struct EcranMapEntree: View {
    @State var region = MKCoordinateRegion(center: .init(latitude: 46.6033, longitude: -1.8883), span: MKCoordinateSpan(latitudeDelta: 10.0, longitudeDelta: 15.0))
    
    let spotsPrincipaux = [
        SpotsPrincipaux(spotVille: "Essaouira", coordinate: CLLocationCoordinate2DMake(31.51427, -9.750695)),
        SpotsPrincipaux(spotVille: "Agadir", coordinate: CLLocationCoordinate2DMake(30.424202, -9.580969)),
        SpotsPrincipaux(spotVille: "Taghazout", coordinate: CLLocationCoordinate2DMake(30.544722, -9.709128))
    ]
    
    
    @State var sheetDetail: SpotsPrincipaux?
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
                
                
                Map(initialPosition: MapCameraPosition.region(region) ) {
                    ForEach(spotsPrincipaux) { principaux in
                        Annotation(principaux.spotVille, coordinate: principaux.coordinate)
                        {
                            
                                NavigationLink{
                                  SpotsAlternatifs()
                                } label: {
                                    Image(systemName: "mappin")
                                        .foregroundColor(.red)
                                }
                            
                           
                        }
                        
                    }
                }
               
                 
                    
                
            }

        }
    }
    
}


#Preview {
    EcranMapEntree()
}
