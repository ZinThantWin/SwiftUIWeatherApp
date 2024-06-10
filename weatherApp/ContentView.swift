//
//  ContentView.swift
//  weatherApp
//
//  Created by ကင်ဇို on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.blue.opacity(0.5)], startPoint: .top, endPoint: UnitPoint.bottom).ignoresSafeArea()
            VStack{
                Text("Cupertino, CA")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                    .foregroundColor(.white)
                Text("26°")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                HStack{
                    EachDay(day: "MON", temperature: 26, icon: "cloud.sun.fill")
                    EachDay(day: "TUE", temperature: 27, icon: "cloud.sun.fill")
                    EachDay(day: "WED", temperature: 23, icon: "cloud.sun.fill")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
