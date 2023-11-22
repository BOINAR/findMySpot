//
//  Pays.swift
//  FindMySpotGroup
//
//  Created by Nayeff BOINARIZIKI on 06/11/2023.
//

import SwiftUI

struct PaysList: View {
    
    var countries = [
    
        country(countryName: "France", countryFlag: "FlagOfFrance"),
        country(countryName: "Maroc", countryFlag: "FlagOfMorocco"),
        country(countryName: "Australie", countryFlag: "FlagOfAustralia"),
    country(countryName: "Hawai", countryFlag: "FlagOfHawai")
        
        
    
    
    ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(countries) { countrie in
                    NavigationLink {
                        ListSpotView1()
                    } label: {
                        HStack(spacing: 10){
                            Image(countrie.countryFlag)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20)
                            
                             Text(countrie.countryName)
                        
        
                            
                                
                    }
                        .navigationTitle("Pays")
                    }

                    
            }
        }

        }
       
                
    }
}

#Preview {
    PaysList()
}
