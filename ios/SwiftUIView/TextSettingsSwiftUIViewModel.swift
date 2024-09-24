//
//  TextSettingsSwiftUIViewModel.swift
//  RandomNamesApp
//
//  Created by Apple on 24/09/2024.
//

import Foundation
final class TextSettingsSwiftUIViewModel: ObservableObject {
  @Published var isBold: Bool = false
  @Published var isItalic: Bool = false
  @Published var isUnderline: Bool = false
}
