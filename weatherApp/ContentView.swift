//
//  ContentView.swift
//  weatherApp
//
//  Created by ကင်ဇို on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    var temp : Int = 90
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue,Color.blue.opacity(0.5)], startPoint: .top, endPoint: UnitPoint.bottom).ignoresSafeArea()
            VStack{
                Text("Cupertino, CA")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 0.5,height: 100)
                    .foregroundColor(.white)
                    .padding(.bottom,20)
                Text("26°")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    EachDay(day: "MON", temperature: 15)
                    EachDay(day: "TUE", temperature: 27)
                    EachDay(day: "WED", temperature: 30)
                    EachDay(day: "THU", temperature: 18)
                    EachDay(day: "FRI", temperature: 27)
                    EachDay(day: "SAT", temperature: 30)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
