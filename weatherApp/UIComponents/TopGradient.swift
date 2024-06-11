import SwiftUI

struct TopGradient : View {
    @Binding var xNight : Bool
    
    var body : some View {
        Rectangle().fill(xNight ? Color.black.gradient : Color.blue.gradient).ignoresSafeArea().onTapGesture {
            xNight = !xNight
        }
    }
}
