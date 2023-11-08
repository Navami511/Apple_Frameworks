//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 07/11/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
            Text(title)
                .padding()
                .frame(width: 300)
                .font(.headline)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(15.0)
        }
    }

#Preview {
    AFButton(title: "sample title")
}
