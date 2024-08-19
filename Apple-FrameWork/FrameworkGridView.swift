//
//  FrameworkGridView.swift
//  Apple-FrameWork
//
//  Created by dilipkumar on 16/08/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.FrameWorks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 FrameWorks")
        }
    
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


struct FrameworkTitleView: View{
    
    let framework: FrameWork
    
    var body: some View{
        VStack{
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
