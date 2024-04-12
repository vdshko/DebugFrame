//
//  ContentView.swift
//  Example
//
//  Created by Vladyslav Shkodych on 19.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            title
            Spacer()
            rectangles
            Spacer()
        }
        .debugFrame(.size)
        .padding(20.0)
        .debugFrame()
        .padding(30.0)
        .background(Color.white)
        .ignoresSafeArea()
    }
    
    private var title: some View {
        VStack {
            Text("This is the Example of using \"DebugFrame\"")
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundColor(Color.primary)
            Image(systemName: "rectangle.dashed.and.paperclip")
                .resizable()
                .imageScale(.large)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
        }
//        .debugBackground() // uncomment to see in work
    }
    
    private var rectangles: some View {
        VStack {
            RoundedRectangle(cornerRadius: 4.0)
                .frame(width: 220.0, height: 100.0)
                .foregroundColor(Color("first"))
                .debugFrame(color: .black)
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 4.0)
                    .frame(width: 120.0, height: 150.0)
                    .foregroundColor(Color("second"))
                    .debugFrame(.size)
                    .padding(.trailing, 25.0)
            }
            HStack {
                RoundedRectangle(cornerRadius: 4.0)
                    .frame(width: 120.0, height: 100.0)
                    .foregroundColor(Color("third"))
                    .debugFrame(color: .white, .originX, .width)
                    .padding(.leading, 20.0)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
