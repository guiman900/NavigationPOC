//
//  ViewController1Wrapper.swift
//  iOSPOCNavigation
//
//  Created by Guillaume Manzano on 10/09/2024.
//

import Foundation
import SwiftUI
import UIKit

struct ViewController1Wrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = ViewController1()
        return vc
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
