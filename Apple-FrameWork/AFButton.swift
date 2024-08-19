//
//  AFButton.swift
//  Apple-FrameWork
//
//  Created by dilipkumar on 18/08/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {

        Button{
            
        }label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }

    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "test title")
    }
}
