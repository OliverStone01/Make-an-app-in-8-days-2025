//
//  ContentView.swift
//  L1 Demo
//
//  Created on 12/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Depth stack to allow the elements to be put on top of the background.
        ZStack {
            
            // Background that also covers the safe areas.
            Color(red: 0.8, green: 0.8, blue: 0.8)
                .ignoresSafeArea()
            
            // Vertical stack for the image and text.
            VStack {
                // Image with rounded corners, padding on all sides and fits the screen.
                Image("field")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                
                // Title text.
                Text("Fields")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    ContentView()
}

