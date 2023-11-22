//
//  DetailRegionSpot.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI

struct SidiKaouki: View {
    var body: some View {
        
        NavigationStack{
            VStack {
                Image("SidiKaouki")
                HStack(spacing : 100){
                    
                    HStack{
                        Image(systemName: "water.waves")
                        Image(systemName: "water.waves")
                        Image(systemName: "water.waves")
                        
                        HStack{ Image(systemName: "figure.stand")
                            Image(systemName: "figure.stand")}
                        
                    }
                    .foregroundStyle(Color.blue)
                    .padding()
                    ZStack{
                        Rectangle()
                            .frame(width: 70, height: 50)
                            .cornerRadius(10)
                            .foregroundStyle(Color.gray)
                        Image(systemName: "heart.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color.blue)
                        
                        Image(systemName: "plus")
                            .foregroundStyle(Color.white)
                    }
                    .padding()
                    
                    
                }
                Spacer()
                
                Image("descriptionEssaouiraSpot")
                Spacer()
                
                
                HStack(spacing : 60){
                    NavigationLink {
                        MapSidiKaouki()
                    } label: {
                        Image("SidiKouakiLocation")
                            .resizable()
                            .scaledToFit()
                        
                        
                    }
                    
                    
                    NavigationLink{
                        MeteoSidiKaouki()
                    } label: {
                        VStack(spacing : 0){
                            
                            Image(systemName: "drop.triangle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            Text("meteo")
                                .font(.title3)
                            
                        }
                        .foregroundStyle(.blue)
                    }
                    
                }
                
            }
            .navigationTitle("Sidi Kaouki")
            
            
        }
    }
}

#Preview {
    SidiKaouki()
}
