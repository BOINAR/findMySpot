import Foundation
import SwiftUI
import SafariServices

struct WebView: View {
    let url: String

    var body: some View {
        Button("Open WebView") {
            if let url = URL(string: url) {
                let safariViewController = SFSafariViewController(url: url)
                UIApplication.shared.windows.first?.rootViewController?.present(safariViewController, animated: true, completion: nil)
            }
        }
    }
}
