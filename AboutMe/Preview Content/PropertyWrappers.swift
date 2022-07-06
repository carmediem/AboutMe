//
//  PropertyWrappers.swift
//  AboutMe
//
//  Created by Carmen Chiu on 7/5/22.
//

import SwiftUI

struct PropertyWrappers: View {
    
    //Protocol-delegate pattern
    //property wrappers
    // var property: String
    @State var currentColor: Color = .red
    //state will chnage the whole view
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle().foregroundColor(currentColor)
                    .frame(width: 50, height: 50, alignment: .center)
                
                NavigationLink {
                    ColorChanger(currentColor: $currentColor)
                } label: {
                    Text("Change Color")
                        .padding()
                    
                }
            }
        }
    }
}

struct PropertyWrappers_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappers()
    }
}
