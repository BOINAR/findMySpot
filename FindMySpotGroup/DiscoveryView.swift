//
//  DiscoveryView.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 05/11/2023.
//

import SwiftUI
import AVKit
import WebKit





struct SpotDetailsView: View {
    var body: some View {
        Text("Détails du spot de surf vont ici")
            .font(.title)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 5)
            .navigationBarTitle("Détails du spot")
    }
}


struct NewsArticleCard: View {
    var titreArticle: String
    var imageArticle: String

    var body: some View {
        VStack {
            Image(imageArticle)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(titreArticle)
                .font(.caption)
                .foregroundColor(Color.white)
                .frame(height: 50)
                .background(Color.blue)
                .cornerRadius(5)
                .padding(.horizontal)
                .shadow(radius: 2)
        }
    }
}

struct DiscoveryView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    PourDebuterSection()
                    TopSpotsSection()
                    SurfNewsSection()
                    AccidentStepsSection()
                }
                .padding(.horizontal)
            }
            .padding(.top, 20)
            .navigationBarTitle("Découvertes")
            .accentColor(.gray)
        }
        .background(Color(red: 0.0, green: 0.3, blue: 0.6).ignoresSafeArea())
    }
}

struct PourDebuterSection: View {
    var body: some View {
        Section(header: Text("Pour débuter").font(.title).foregroundColor(.blue)) {
            ForEach(["M7pPrEha6zE", "P29otdBnHKc", "AaNTxeK3N9g", "D2_IiI4ZyNI"], id: \.self) { videoID in
               YouTubeVideoView(videoID: videoID)
                  .frame(height: 200)
            }
        }
    }
}

struct TopSpotsSection: View {
    var body: some View {
        Section(header: Text("Meilleurs Spots").font(.title).foregroundColor(.blue)) {
            NavigationLink(destination: SpotDetailsView()) {
              //  SpotRow(spot: Spot(spotName: "Sidi Kaouki", spotPicture: "Image2"))
           }
            NavigationLink(destination: SpotDetailsView()) {
                //SpotRow(spot: Spot(spotName: "Essaouira", spotPicture: "Image3"))
            }
        }
    }
}


struct SurfNewsSection: View {
    var body: some View {
        Section(header: Text("Actualités du surf").font(.title).foregroundColor(.blue)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    NavigationLink(destination: WebView(url: "https://www.la-croix.com/L-Australien-Blake-Johnston-bat-record-longue-session-surf-2023-03-17-1301259521")) {
                        NewsArticleCard(titreArticle: "40 heures au large d'une plage de Sydney", imageArticle: "Image")
                    }
                    NavigationLink(destination: WebView(url: "https://actu.fr/nouvelle-aquitaine/soorts-hossegor_40304/landes-surf-c-est-loupe-pour-le-royal-barrique-2023_60281826.html")) {
                        NewsArticleCard(titreArticle: "Intempéries : Royal Barrique 2023 annulé", imageArticle: "Image1")
                   }
                    NavigationLink(destination: WebView(url: "https://www.surfingfrance.com/federation/actualites/handi-surf-organise-le-bluesurfest-a-biarritz.html")) {
                        NewsArticleCard(titreArticle: "HANDI SURF organise le BlueSurfest à Biarritz", imageArticle: "Image4")
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct AccidentStepsSection: View {
    @State private var selectedStep = 1

    var body: some View {
        Section(header: Text("Que faire en cas d'accident ?").font(.title).foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.6))) {
            VStack(alignment: .leading, spacing: 10) {
                Text("En cas d'accident de surf, restez calme et suivez ces étapes pour assurer votre sécurité et celle des autres.")
                    .font(.title)
                    .foregroundColor(Color(red: 0.0, green: 0.3, blue: 0.6))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 10)
                    .background(Color.white) // Fond blanc
                    .cornerRadius(10) // Coins arrondis
                    .padding(10) // Espacement autour du texte
                    .shadow(color: Color(red: 0.0, green: 0.3, blue: 0.6), radius: 5, x: 0, y: 5) // Ombre

                Divider()
                    .background(Color(red: 0.0, green: 0.3, blue: 0.6))

                Text("Voici les étapes à suivre en cas d'accident de surf :")
                    .font(.title)
                    .foregroundColor(Color(red: 0.0, green: 0.3, blue: 0.6))
                    .padding(.vertical, 10)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(1...8, id: \.self) { etapeIndex in
                        AccidentStepView(stepIndex: etapeIndex, selectedStep: $selectedStep)
                            .frame(width: 500)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct AccidentStepView: View {
    let stepIndex: Int
    @Binding var selectedStep: Int

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.3))
                    .frame(width: 30, height: 30)
                    .shadow(radius: 5)

                Image(systemName: "\(stepIndex).circle.fill")
                    .font(.title)
                    .foregroundColor(Color(red: 0.0, green: 0.3, blue: 0.6))
            }

            ScrollView {
                Text(accidentStepDescription(stepIndex))
                    .foregroundColor(Color(red: 0.0, green: 0.3, blue: 0.6))
            }
        }
        .onTapGesture {
            selectedStep = stepIndex
        }
        .padding()
        .background(selectedStep == stepIndex ? Color.blue.opacity(0.3) : Color.clear)
        .cornerRadius(10)
    }

    func accidentStepDescription(_ stepIndex: Int) -> String {
        switch stepIndex {
            case 1:
                return "Gardez votre calme. La panique ne vous aidera pas en cas d'accident."
            case 2:
                return "Évaluez la situation. Assurez-vous d'abord de votre sécurité, puis portez assistance aux autres."
            case 3:
                return "Aidez les autres surfeurs en détresse. Utilisez des dispositifs de flottaison si disponibles."
            case 4:
                return "Nagez vers le rivage calmement. Suivez les courants si nécessaire."
            case 5:
                return "Soyez attentif aux courants. Nagez latéralement pour échapper aux courants."
            case 6:
                return "Signalez votre besoin de secours en levant un bras."
            case 7:
                return "Évitez de perdre votre planche. Récupérez-la si elle est à proximité."
            case 8:
                return "Suivez les conseils des sauveteurs une fois sur place."
            default:
                return ""
        }
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}

