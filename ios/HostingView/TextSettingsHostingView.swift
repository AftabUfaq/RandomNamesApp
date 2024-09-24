//
//  TextSettingsHostingView.swift
//  RandomNamesApp
//
//  Created by Apple on 24/09/2024.
//

import SwiftUI

final class TextSettingsHostingView: UIView {
  var view: UIView?
  var viewModel = TextSettingsSwiftUIViewModel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupView()
  }

  private func setupView() {
    let view = TextSettingsSwiftUIView(viewModel: viewModel)
    let vc = UIHostingController(rootView: view)
    vc.view.frame = bounds
    self.addSubview(vc.view)
    self.view = vc.view
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    view?.frame = bounds
  }
}
