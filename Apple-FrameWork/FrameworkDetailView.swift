//
//  FrameworkDetailView.swift
//  Apple-FrameWork
//
//  Created by dilipkumar on 18/08/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameworks: FrameWork
    
    var body: some View {
        
        VStack{
            
            HStack {
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44.0, height: 44.0)
                        
                }
            }
            
            Spacer()
            
            FrameworkTitleView(framework: frameworks)

            Text(frameworks.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            }label: {
                AFButton(title: "Learn More")
            }
        }
        

        
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(frameworks: MockData.sampleFrameWork)
    }
}
