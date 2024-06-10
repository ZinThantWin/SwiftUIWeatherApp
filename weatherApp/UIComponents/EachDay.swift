//
//  EachDay.swift
//  weatherApp
//
//  Created by ကင်ဇို on 10/06/2024.
//

import SwiftUI

struct EachDay: View {
    var day : String
    var temperature : Int
    var icon : String
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 20))
                .foregroundColor(.white)
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 50,height: 50)
                .foregroundColor(.white)
                .padding(.vertical,15)
            Text("\(temperature)°")
                .font(.system(size: 40))
                .foregroundColor(.white)
        }
    }
}
