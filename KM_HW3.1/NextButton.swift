//
//  NextButton.swift
//  KM_HW3.1
//
//  Created by Konstantin on 17.10.2020.
//

import SwiftUI

struct NextButton: View {
    var nameButton: String
    var body: some View {
            Text("\(nameButton)")
                .font(.title).bold().foregroundColor(.white)
                .frame(width: 150, height: 50, alignment: .center)
                .background(Color(.blue))
                .cornerRadius(20)
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton(nameButton: "Next")
    }
}
