//
//  Welcome.swift
//  Tries
//
//  Created by ruba alhudyani on 26/08/1444 AH.
//

import SwiftUI

struct Welcome: View {
    @State private var isActive: Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        if isActive{
          //  Explore()
            ContentView()
        }else{
            
            VStack{
                ZStack{
                    Color("WelcomeBackground")
                    Image("Mkkn").resizable()
                        .scaledToFill()
                        .frame(width :224.02 , height: 147.42).scaleEffect(size)
                        .opacity(opacity)
                        .onAppear{
                            withAnimation(.easeIn(duration: 1.1)){
                                self.size = 0.9
                                self.opacity = 1.00
                            }
                        }
                    Text("Welcome to MKKN !!")
                        .fontWeight(.bold)
                        .foregroundColor(Color("ButtonsColor"))
                        .padding(.top,550).font(.system(size: 21))
                }.ignoresSafeArea()
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
                    withAnimation(){
                        self.isActive = true
                    }
                }
            }
            
        }
    }
        }

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
