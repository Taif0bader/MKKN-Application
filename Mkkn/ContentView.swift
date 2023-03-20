//
//  ContentView.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            
            Color("MainBackgroundColor").ignoresSafeArea(.all)
            
            NavigationView{
                TabView{
                    Explore()
                        .tabItem(){
                            Image(systemName: "square.grid.2x2.fill")
                            Text("Explore")
                        }
                    
                    Programs()
                        .tabItem(){
                            Image(systemName: "rectangle.on.rectangle.angled")
                            Text("Programs")
                        }
                    
                    CVs()
                        .tabItem(){
                            Image(systemName: "person.3")
                            Text("CVs")
                        }
                    
                }.accentColor(Color("ButtonsColor"))
                
                
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
