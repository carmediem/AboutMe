//
//  ContentView.swift
//  AboutMe
//
//  Created by Carmen Chiu on 7/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            VStack{
                Image("SanFrancisco")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                VStack(alignment: .leading) {
                    
                    Image("CarmenPhoto")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 4)
                        )
                    
                    
                    HStack {
                        Text("Carmen Chiu")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        
                        Image(systemName: "checkmark.seal.fill")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.blue)
                    }
                    
                    Text("@carme_diem")
                        .foregroundColor(.secondary)
                        .offset(y: -8)
                    Text("Junior iOS Developer")
                    
                    HStack {
                        Image(systemName: "location.circle.fill")
                        Text("San Francisco")
                        Image(systemName: "calendar")
                        Text ("New career coming Fall 2022")
                        
                    }
                    .padding(.top, 1)
                }
                .padding(.top, -75)
                Spacer()
            }.ignoresSafeArea()
        }
    }
}

