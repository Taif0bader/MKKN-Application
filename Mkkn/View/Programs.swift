//
//  Programs.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct Programs: View {
    
    
    @State private var showsheet: Bool = false
    @State private var showsheet2: Bool = false
    @State private var showsheet3: Bool = false
    @State private var sort: Int = 0
    
    
    var body: some View {
        
            
        ZStack {
            Color("MainBackgroundColor")
                .ignoresSafeArea()
            NavigationView {
                
                // List Photos
                VStack() {
                    ScrollView(.vertical){
                        
                        VStack(spacing: -30){
                            // Pottery
                            ZStack{
                                
                                
                                Image("EditedPottery").resizable()
                                    .cornerRadius(25)
                                    .padding(.all, 30)
                                    .frame(width: 380, height: 380)
                                    .position(x: 190, y: 220)
                                Text("Pottery and handicraft trade")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 168.365)
                                    .position(x:250,y:250)
                                
                                
                                ZStack{
                                    Color("ColorGrey")
                                        .cornerRadius(25)
                                        .padding([.top, .leading, .trailing], 35.09)
                                        .frame(width:382, height:130)
                                        .position(x: 190, y:315)
                                    ZStack{
                                        
                                        Color("ButtonsColor")
                                            .cornerRadius(25)
                                            .padding([.top, .leading, .trailing], 35.09)
                                            .frame(width:140, height:65)
                                            .position(x: 290, y:320)
                                        
                                        Button("More") {
                                            showsheet.toggle()
                                        }
                                        .foregroundColor(.white)
                                        .position(x:290,y:337)
                                        .sheet(isPresented: $showsheet){
                                            PotterySheet()
                                        }
                                        
                                    }
                                    
                                    VStack{
                                        
                                        HStack{
                                            Image(systemName: "mappin.square").resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20, height: 20)
                                                .position(x: 70, y:315)
                                            Text("Riyadh")
                                                .font(.system(size: 14.5))
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .position(x: -83, y:315)
                                            
                                        }
                                        
                                        
                                        HStack{
                                            
                                            Image(systemName: "calendar")
                                                .resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20 , height: 20)
                                                .position(x:70,y:150)
                                            
                                            Text("1/4/2023 - 12/6/2023")
                                                .font(.system(size: 14.5))
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .position(x:-34,y:150)
                                            
                                        }
                                        
                                    }
                                }
                            }
                            
                            // Bisht
                            ZStack{
                                Image("EditedBisht").resizable()
                                    .cornerRadius(25)
                                    .padding(.all, 35.09)
                                    .frame(width: 380, height: 380)
                                    .position(x: 190, y: 220)
                                Text("Sewing of men's bishts")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 168.365)
                                    .position(x:230,y:250)
                                
                                ZStack{
                                    Color("ColorGrey")
                                        .cornerRadius(25)
                                        .padding([.top, .leading, .trailing], 35.09)
                                        .frame(width:379, height:120)
                                        .position(x: 190, y:314)
                                    ZStack{
                                        
                                        Color("ButtonsColor")
                                            .cornerRadius(25)
                                            .padding([.top, .leading, .trailing], 35.09)
                                            .frame(width:140, height:65)
                                            .position(x: 290, y:320)
                                        
                                        Button("More")   {
                                            showsheet2.toggle()
                                        }
                                        .foregroundColor(.white)
                                        .position(x:290,y:337)
                                        .sheet(isPresented: $showsheet2){
                                            BishtSheet()
                                        }
                                    }
                                    
                                    VStack{
                                        
                                        
                                        HStack{
                                            Image(systemName: "mappin.square").resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20, height: 20)
                                                .position(x: 70, y:315)
                                            Text("Al-Ahsa")                                                    .font(.system(size: 14.5))
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .position(x: -80, y:315)
                                        }
                                        
                                        
                                        HStack{
                                            
                                            Image(systemName: "calendar")
                                                .resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20 , height: 20)
                                                .position(x:70,y:150)
                                            
                                            Text("12/5/2023 - 12/8/2023")
                                                .font(.system(size: 14.5))
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .position(x:-34,y:150)
                                            
                                        }
                                        
                                    }
                                }
                                
                            }
                            
                            // Agriculture
                            ZStack{
                                Image("EditedAgriculture").resizable()
                                    .cornerRadius(25)
                                    .padding(.all, 35.09)
                                    .frame(width: 380, height: 380)
                                    .position(x: 190, y: 220)
                                Text("Agriculture")
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 168.365)
                                    .position(x:220,y:270)
                                ZStack{
                                    Color("ColorGrey")
                                        .cornerRadius(25)
                                        .padding([.top, .leading, .trailing], 35.09)
                                        .frame(width:379, height:120)
                                        .position(x: 190, y:314)
                                    ZStack{
                                        
                                        Color("ButtonsColor")
                                            .cornerRadius(25)
                                            .padding([.top, .leading, .trailing], 35.09)
                                            .frame(width:140, height:65)
                                            .position(x: 290, y:320)
                                        
                                        
                                        
                                        Button("More")   {
                                            showsheet3.toggle()
                                        }
                                        .foregroundColor(.white)
                                        .position(x:290,y:337)
                                        .sheet(isPresented: $showsheet3){
                                            AgricultureSheet()
                                            
                                        }
                                        
                                    }
                                    
                                    VStack{
                                        
                                        
                                        HStack{
                                            Image(systemName: "mappin.square").resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20, height: 20)
                                                .position(x: 70, y:315)
                                            Text("Abha")
                                                .font(.system(size: 14.5))
                                                .position(x: -80, y:315)
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                            
                                        }
                                        
                                        
                                        HStack{
                                            
                                            Image(systemName: "calendar")
                                                .resizable()
                                                .foregroundColor(Color.white)
                                                .frame(width: 20 , height: 20)
                                                .position(x:70,y:150)
                                            
                                            Text("12/3/2023 - 12/6/2023")
                                                .font(.footnote)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .position(x:-34,y:150)
                                            
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            
            .navigationTitle("Programs")
            // Menu
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Menu{
                        Picker(selection: $sort, label: Text("Sorting options")) {
                            Text("Pottery & handicraft trade").tag(0)
                            Text("Agriculture").tag(1)
                            Text("Sewing of men's bishts").tag(2)
                        }
                    }
                label: {
                    Label("filter", systemImage: "line.3.horizontal.decrease")
                }
                }
            }
        }
            }
//            .accentColor(Color("ButtonsColor"))
        
        .accentColor(Color("ButtonsColor"))

    }
    
    struct Programs_Previews: PreviewProvider {
        static var previews: some View {
            Programs()
        }
    }
}
