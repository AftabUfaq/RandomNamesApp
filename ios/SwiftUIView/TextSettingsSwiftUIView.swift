//
//  TextSettingsSwiftUIView.swift
//  RandomNamesApp
//
//  Created by Apple on 24/09/2024.
//

import SwiftUI

struct TextSettingsSwiftUIView: View {
  @ObservedObject var viewModel: TextSettingsSwiftUIViewModel
  @State private var isBold: Bool = false
  @State private var isItalic: Bool = false
  @State private var isUnderline: Bool = false

  var body: some View {
    Form {
      Section {
        Toggle("Bold", isOn: $viewModel.isBold)
        Toggle("Italic", isOn: $viewModel.isItalic)
        Toggle("Underline", isOn: $viewModel.isUnderline)
      }
    }
  }
}
