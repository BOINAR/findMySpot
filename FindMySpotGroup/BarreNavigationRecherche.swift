//
//  BarreNavigationRecherche.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 05/11/2023.
//

import SwiftUI

struct BarreNavigationRecherche: View {
    @State var pays = ""
    
    var body: some View {
        HStack{
            TextField("", text: $pays)
                .font(.title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Image(systemName: "magnifyingglass.circle")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    BarreNavigationRecherche()
}
