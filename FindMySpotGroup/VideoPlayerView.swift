//
//  VideoPlayer.swift
//  FindMySpotGroup
//
//  Created by apprenant51 on 06/11/2023.
//

import Foundation
import SwiftUI
import AVKit
import WebKit


struct VideoPlayerView: View {
    var videoURL: String

    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: videoURL)!)) {
            // Vous pouvez personnaliser la vue de lecture ici, par exemple, ajouter des contrôles de lecture
        }
        .frame(height: 300) // Réglez la hauteur selon vos préférences
    }
}
struct YouTubeVideoView: UIViewRepresentable {
    let videoID: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") {
            let request = URLRequest(url: youtubeURL)
            uiView.load(request)
        }
    }
}

