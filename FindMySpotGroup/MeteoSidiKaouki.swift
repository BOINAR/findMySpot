//
//  sidiKaouki.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 04/11/2023.
//

import SwiftUI

struct MeteoSidiKaouki: View {
    var body: some View {
        NavigationStack{
                    VStack {
                        Image("SidiKaouki")
                        Spacer()
                        Text("Hauteur vagues")
                            .font(.largeTitle)
                            .foregroundStyle(.blue)
                        
                        HStack(spacing : 20){
                            Text("1.2m >>")
                            Text("2.1m")
                            }
                        .font(.system(size: 50))
                        .foregroundStyle(Color.gray)
                        Spacer()
                        VStack(alignment: .leading){
                            HStack{
                                ZStack{  Rectangle()
                                        .frame(width: 100, height: 30)
                                    Text("Houle")
                                        .foregroundStyle(Color.white)
                                    
                                }
                                .foregroundStyle(.gray)
                                
                                Image(systemName: "arrowshape.up.fill")
                                Text("S 2,3 m 7s")
                                    .font(.system(size: 20))
                            }
                            HStack{
                                ZStack {
                                    Rectangle()
                                        .frame(width: 100, height: 30)
                                    Text("Vent")
                                        .foregroundStyle(Color.white)
                                }
                                .foregroundStyle(.gray)
                                
                                Image(systemName: "arrowshape.up.fill")
                                Text("S 42 km/h (Rafales 57 km/h)")
                                    .font(.system(size: 20))
                            }
                        }
                        
                        
                        Spacer()
                        
                        HStack{
                            Image(systemName: "cloud.sun")
                                .resizable()
                                .scaledToFit()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            Text("19°C")
                                .font(.title)
                            VStack{
                                Image(systemName: "drop.triangle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.blue)
                            }
                            
                        }
                        .padding()
                    }
                    .navigationTitle("Sidi Kaouki")
                }
    }
}

#Preview {
    MeteoSidiKaouki()
}
