//
//  TextSettingsSwiftUIView.swift
//  RandomNamesApp
//
//  Created by Apple on 24/09/2024.
//

import SwiftUI
import OfferistaBrochureWidget

struct TextSettingsSwiftUIView: View {
  @ObservedObject var viewModel: TextSettingsSwiftUIViewModel
  @State private var isBold: Bool = false
  @State private var isItalic: Bool = false
  @State private var isUnderline: Bool = false

  var body: some View {
    BrochureWidgetView()
  }
}
struct BrochureWidgetView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        // Set API key, secret, and country (optional)
        BrochureWidgetServiceConfig.shared.set(apiKey: "94AEB3BBB22BB6EB", apiSecret: "d3426a99f8bce19e1e56bbee23ee65f0")
        
        // Initialize the BrochureWidgetController
        let brochureWidgetController = BrochureWidgetController()
        brochureWidgetController.setLayoutType(.staggered)
        
        // Return the BrochureWidgetController wrapped inside a UIViewController
        return brochureWidgetController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No update logic needed for now
    }
}
