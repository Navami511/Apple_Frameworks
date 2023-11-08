//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 08/11/23.
//

import Foundation
import SwiftUI
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
    @Published var isAppDetailShowing: Bool = false
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
