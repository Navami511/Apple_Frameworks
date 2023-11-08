//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Navami Ajay on 07/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
//    let columns: [GridItem] = [GridItem(.flexible()),
//                               GridItem(.flexible()),
//                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                //                    LazyVGrid(columns: columns) {
                //                        ForEach(MockData.frameworks, id: \.self){ framework in
                //                            Button(action: {
                //                                sheetPresent.toggle()
                //                            }, label: {
                //                                FrameWorkTitleView(framework: framework)
                //                            })
                //                            .sheet(isPresented: $sheetPresent, content: {
                //                                AppDetail(sheetPresent: $sheetPresent, framework: framework)
                //                            })
                //
                //                        }
                //                }
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.isAppDetailShowing.toggle()
                                viewModel.selectedFramework = framework
                            }
                                                }
                }
                .navigationTitle("🍎 Frameworks")
            }
            .sheet(isPresented: $viewModel.isAppDetailShowing){
                AppDetail(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isAppDetailShowing: $viewModel.isAppDetailShowing)
            }

        }
    }
}

#Preview {
    FrameworkGridView()
       // .preferredColorScheme(.dark)
}
