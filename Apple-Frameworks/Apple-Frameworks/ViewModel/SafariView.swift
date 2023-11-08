//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 08/11/23.
//


import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
        
    //typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
