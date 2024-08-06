//
//  ContentView.swift
//  progressBar
//
//  Created by Brandon Delgado on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var progressTracker = 0.0
    @State var outterFrame = 375.0
    
    var body: some View {
        HStack {
            Text("Track progress")
            Button("Tap Here"){
                withAnimation {
                    progressTracker < outterFrame ? (progressTracker += 25) : (progressTracker = 35.0)
                }
               
                    
                
                
            }
                .frame(width: 80, height: 35)
                .background(.red)
                .foregroundColor(.blue)
                .padding()
            
        }
  
      
        ZStack {
            RoundedRectangle(cornerRadius: 200)
                .fill(.blue)
                .frame(width: outterFrame, height: 10)
            
            HStack {
                RoundedRectangle(cornerRadius: 200)
                    .fill(.black)
                    .frame(width: progressTracker, height: 10)
                Spacer()
               
                
                    
            }
           
           
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
