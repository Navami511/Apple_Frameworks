//
//  FrameWorkTitleView.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 07/11/23.
//

import SwiftUI

struct FrameWorkTitleView: View {
    let framework: Framework
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.headline)
                .fontWeight(.semibold)
                .scaledToFit() // to change size dynamically to fit the data
                .minimumScaleFactor(0.6) // to change the text size to fit in the view, but only by 0.6 or 60%
        }
        .padding()
    }
}

#Preview {
    FrameWorkTitleView(framework: MockData.sampleFramework)
}
