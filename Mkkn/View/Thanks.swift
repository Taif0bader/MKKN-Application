//
//  Thanks.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct Thanks: View {
    @State private var isActive: Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack{
                
                
                if isActive{
                    ContentView()
                }else{
                    VStack{
                        ZStack{
                            Color("WelcomeBackground")
                            Image("Mkkn").resizable()
                                .frame(width :220 , height: 220)
                            
                            Text("Thank you!!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ButtonsColor"))
                                .multilineTextAlignment(.center)
                                .padding(.top, 250)
                            
                            Text("We appreciate you enrolling in our program")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ButtonsColor"))
                                .multilineTextAlignment(.center)
                                .padding(.top, 330)
                            
                        }.ignoresSafeArea()
                    }.onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now()+1.0){
                            withAnimation(){
                                self.isActive = true
                            }
                        }
                    }
                }
                
            
        }            .navigationBarBackButtonHidden(true)

    }
}

struct Thanks_Previews: PreviewProvider {
    static var previews: some View {
        Thanks()
    }
}
