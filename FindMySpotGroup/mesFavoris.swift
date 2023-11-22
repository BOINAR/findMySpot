//
//  mesFavoris.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI

struct mesFavoris: View {
   
    var spots = [
        
            spot( spotName: "Essaouira", spotPicture: "EssaouiraList", DeleteFavorite: "DeleteFavorite"),
            spot( spotName: "Anchor Point", spotPicture: "AnchorPointList", DeleteFavorite: "DeleteFavorite"),
            spot( spotName: "Cap Sim", spotPicture: "CapSimList", DeleteFavorite: "DeleteFavorite"),
            spot( spotName: "Imsouane", spotPicture: "ImsouaneList", DeleteFavorite: "DeleteFavorite"),
            spot( spotName: "Sidi Kaouki", spotPicture: "SidiKaoukiList", DeleteFavorite: "DeleteFavorite"),
            
        ]
        
        var body: some View {
            NavigationStack{
                List{
                    ForEach(spots) { spot in
                        NavigationLink {
                            SidiKaouki()
                        } label: {
                            HStack{Image(spot.spotPicture)
                                Text(spot.spotName)
                                Spacer()
                                Image(spot.DeleteFavorite)
                        }

                        
                                
                    }
                }
            }
            }
            
    }
}

#Preview {
    mesFavoris()
}
