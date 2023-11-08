//
//  AppDetail.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 07/11/23.
//

import SwiftUI

struct AppDetail: View {
    var framework: Framework
    @Binding var isAppDetailShowing: Bool
    @State private var isShowingSafariView: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                isAppDetailShowing.toggle()
                
            }, label: {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                //.edgesIgnoringSafeArea(.all)
                    .padding(.leading, 280)
                    .padding(.top)
                    .foregroundColor(Color(.label))
            })
            //Spacer()
            FrameWorkTitleView(framework: framework)
                .padding(.all, 40)
            Text(framework.description)
                .padding()
            Spacer()
            Button {
                isShowingSafariView.toggle()
                print("btn tapped")
            } label: {
                AFButton(title: "Learn More")
            }
        }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
            Spacer()   
    }
}

#Preview {
    AppDetail(framework: MockData.sampleFramework, isAppDetailShowing: .constant(true))
}
