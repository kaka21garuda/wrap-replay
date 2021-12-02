//
//  AstronautView.swift
//  wrap
//
//  Created by Buka Cakrawala on 12/1/21.
//

import SwiftUI

struct AstronautView: View {
    var body: some View {
        VStack {
            LottieView(filename: "lottie-astronaut-and-music")
                .frame(width: 280, height: 280)
        }
    }
}

struct AstronautView_Previews: PreviewProvider {
    static var previews: some View {
        AstronautView()
    }
}
