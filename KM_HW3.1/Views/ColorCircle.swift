//
//  Cycle.swift
//  KM_HW3.1
//
//  Created by Konstantin on 17.10.2020.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .shadow(radius: 10)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            
    }
}

struct Cycle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.3)
    }
}
