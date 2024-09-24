//
//  TextSettingsViewManager.swift
//  RandomNamesApp
//
//  Created by Apple on 24/09/2024.
//

import Foundation
@objc(TextSettingsViewManager)
class TextSettingsViewManager: RCTViewManager {

  override class func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    TextSettingsHostingView()
  }
}
