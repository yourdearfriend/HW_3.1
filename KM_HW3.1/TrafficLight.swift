import SwiftUI

enum ValueTrafficLight: Double {
    case onStatus = 1.0
    case offStatus = 0.3
}

enum StatusTrafficLights: Double {
    case off, red, yellow, green
}

struct TrafficLight: View {
    @State private var nameButton: String = "Start"
    @State private var redLight: Double = ValueTrafficLight.offStatus.rawValue
    @State private var yellowLight: Double = ValueTrafficLight.offStatus.rawValue
    @State private var greenLight: Double = ValueTrafficLight.offStatus.rawValue
    
    @State private var currentLight: StatusTrafficLights = .off
    
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                ColorCircle(color: .red,
                            opacity: redLight)
                ColorCircle(color: .yellow,
                            opacity: yellowLight)
                ColorCircle(color: .green,
                            opacity: greenLight)
                
                Spacer()
                
                Button(action: changeLightButtonPressed) {
                    NextButton(nameButton: nameButton)
                }
            }.padding()
        }
    }
    
    private func changeLightButtonPressed() {
        nameButton = "Next"
        
        switch currentLight {
        case .off:
            redLight = ValueTrafficLight.onStatus.rawValue
            currentLight = .red
        case .red:
            redLight = ValueTrafficLight.offStatus.rawValue
            yellowLight = ValueTrafficLight.onStatus.rawValue
            currentLight = .yellow
        case .yellow:
            yellowLight = ValueTrafficLight.offStatus.rawValue
            greenLight = ValueTrafficLight.onStatus.rawValue
            currentLight = .green
        case .green:
            greenLight = ValueTrafficLight.offStatus.rawValue
            redLight = ValueTrafficLight.onStatus.rawValue
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
