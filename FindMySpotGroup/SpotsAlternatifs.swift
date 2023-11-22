import SwiftUI

struct SpotsAlternatifs: View {
    
    var alternatifs = [
        Alternatif(spotName: "Essaouira", spotPicture: "EssaouiraList2", frequentation: 4, difficulte: 1),
        Alternatif(spotName: "Cap Sim", spotPicture: "CapSimList2", frequentation: 1, difficulte: 2),
    Alternatif(spotName: "Sidi Kaouki", spotPicture: "SidiKaoukiList2", frequentation: 2, difficulte: 3)
    ]
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
            
            Image("Essaouira")
            HStack(){
                Image(systemName: "water.waves")
                    .foregroundStyle(.blue)
                Text("Niveau de pratique")
                Spacer()
                Image(systemName: "figure.stand")
                    .foregroundStyle(.blue)
                Text("Niveau de fréquentation")
            }
            .font(.system(size: 15))
            .padding()
            
           
                List{
                    ForEach(alternatifs) { alternatif in
                        HStack{
                        NavigationLink {
                            SidiKaouki()
                        } label: {
                            Image(alternatif.spotPicture)
                                
                            VStack{
                                Text(alternatif.spotName)
                                    .font(.title)
                                
                                
                                HStack{
                                    ForEach(0..<alternatif.difficulte){_ in
                                        Image(systemName: "water.waves")
                                            .foregroundStyle(.blue)
                                            
                                }
                                
                                }
                                .padding()
                                
                                HStack{
                                    
                                    ForEach(0..<alternatif.frequentation){_ in
                                        Image(systemName: "figure.stand")
                                    }
                                }
                                .foregroundStyle(.blue)
                                
                                
                            }
                            .padding()
                            
                        }
                            
                    }
            }
                }
                    
                
            
        
            }
            .navigationTitle("Essaouira")
                
            

            
            
        }
        
        
        
    }
}

#Preview {
    SpotsAlternatifs()
}

