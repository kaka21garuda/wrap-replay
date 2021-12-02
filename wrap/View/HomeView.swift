//
//  HomeView.swift
//  wrap
//
//  Created by Buka Cakrawala on 12/1/21.
//

import SwiftUI

extension LinearGradient {}

struct HomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(stops: [
                    Gradient.Stop(color: Color(red: 197 / 255, green: 49 / 255, blue: 95 / 255), location: 0.25),
                    Gradient.Stop(color: Color(red: 116 / 255, green: 58 / 255, blue: 136 / 255), location: 0.84),
            ]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Text("Welcome,")
                            .font(.custom("Outfit-Black", size: 36))
                            .padding()
                        .foregroundColor(Color.white)
                        Spacer()
                    }.padding(.leading, 1)
                    HStack {
                        Text("Start creating your social music card here:")
                            .font(.custom("Outfit-Bold", size: 24))
                            .foregroundColor(Color.white)
                        Spacer()
                    }.padding()
                }
                AstronautView()
                    .padding(.bottom, 5)
                HStack {
                    Text("Pick your favorite music ")
                        .font(.custom("Outfit-Bold", size: 24))
                        .foregroundColor(Color.white)
                    + Text("streaming ")
                        .foregroundColor(Color(red: 255 / 255, green: 150 / 255, blue: 0 / 255))
                        .font(.custom("Outfit-Bold", size: 24))
                    + Text("service...")
                        
                        .font(.custom("Outfit-Bold", size: 24))
                        .foregroundColor(Color.white)
                        
                }.padding(.bottom)
                HStack {
                    Button {
                        print("Apple Music")
                    } label: {
                        StreamingButton()
                        
                    }
                    
                    Button {
                        print("Apple Music")
                    } label: {
                        StreamingButton()
                        
                    }
                    
                    Button {
                        print("Apple Music")
                    } label: {
                        StreamingButton()
                        
                    }

                    
                }.padding()
                Spacer()
            }
            
        }
    }
}

struct StreamingButton: View {
    
    @State var circleTapped = false
    @State var circlePressed = false
    
    
    var body: some View {
        ZStack {
            Image(systemName: "applelogo")
                .font(.system(size: 26, weight: .bold))
                .foregroundColor(Color.white)
                .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: 10, z: 0))
                
        }
        .frame(width: 45, height: 45)
        
        .background(
            ZStack {
                Circle()
                    .fill(Color(red: 116 / 255, green: 58 / 255, blue: 136 / 255))
                    .frame(width: 70, height: 70)
                    .shadow(color: Color(red: 243 / 255, green: 249 / 255, blue: 255 / 255), radius: 12, x: -8, y: -8)
                    .shadow(color: Color(red: 36 / 255, green: 37 / 255, blue: 255 / 255), radius: 8, x: 8, y: 8)
                    .padding()
            }
        )
        .scaleEffect(circleTapped ? 1.2 : 1)
        .onTapGesture {
            self.circleTapped.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.circleTapped = false
            }
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
