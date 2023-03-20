//
//  Explore.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//hh

import SwiftUI

struct Explore : View {
    
    
    let images=["1","2","3"]
    let texts = ["Pottery And Handicraft Trade","Sewing Of \n Men's Bishts","Agriculture"]
    private var numberOfImages = 3
    private let timer = Timer.publish(every: 10, on: .main, in: .common) .autoconnect()
    @State private var currentIndex = 0
    let progress : Double = 0.00
    
    @State private var showsheet1: Bool = false
    @State private var showsheet2: Bool = false
    @State private var showsheet3: Bool = false
    @State private var sort: Int = 0
    
    var body: some View {
       
            
            
            NavigationView{
                
                ScrollView(.vertical){
                    VStack {
                        
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color("AchievementsColor"))
                                .frame(width: 360, height: 140)
                            HStack{
                                VStack (spacing : 12){
                                    
                                    Text("Achievements")
                                        .font(.title)
                                        .fontWeight(.black)
                                        .foregroundColor(Color.white)
                                    //                            .multilineTextAlignment(.leading).position(x:130, y:145)
                                    
                                    Text("   Just keep going, \n   You never know how far you can go.")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color.white)
                                    //                        .position(x:135,y: 195)
                                    
                                }//.position(x:130, y: 170)
                                ZStack{
                                    Circle()
                                        .stroke( // 1
                                            Color("circleProgressColor1").opacity(0.5),
                                            lineWidth: 15
                                        ).frame(width: 90, height: 90)
                                    //                                .position(x:305, y:175)
                                    
                                    Circle()
                                        .trim(from: 0, to: progress)
                                        .stroke(
                                            Color("ProgressBarBackground"),
                                            style: StrokeStyle(
                                                lineWidth: 15,
                                                lineCap: .round
                                            )
                                        ).frame(width: 90, height: 90)
                                    //.position(x:197,y:283)
                                        .rotationEffect(.degrees(-90)).animation(.easeOut, value: progress)
                                    Text("\(progress * 100, specifier: "%.0f%%")")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center)
                                        .bold()
                                    //                                .position(x:305,y:175)
                                    
                                }
                            }}
                        .padding(25)
                        
                        
                        
                        
                        VStack (spacing : 0){
                            Text("Recent Programs ").padding(.trailing, 120.0)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            GeometryReader { proxy in
                                TabView(selection:$currentIndex) {
                                    ForEach(0..<numberOfImages) {i in
                                      
                                            Button {
                                                if i == 0 {
                                                    showsheet1.toggle()
                                                }else if i == 1{
                                                    showsheet2.toggle()
                                                }else if i == 2 {
                                                    showsheet3.toggle()
                                                }
                                            }
                                                label: {
                                                    
                                                ZStack {
                                                Image("\(images[i])")
                                                    .resizable().overlay(Color("pictureBlur").opacity(0.1))
                                                    .frame(width:360,height: 230).cornerRadius(25)
                                                    
                                                
                                                    Text(texts[i])
                                                        .multilineTextAlignment(.leading)
                                                        .padding([.top, .trailing], 90.0).padding(.leading, 24.0)
                                                    .font(.largeTitle)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                            }

                                         
                                            
                                            
                                        }
                                        
                                        .ignoresSafeArea()
                                        .tag(i)
                                        
                                    }
                                    
                                }.tabViewStyle(PageTabViewStyle()).clipShape(RoundedRectangle(cornerRadius: 25))
                                    .padding(.bottom, 250.0)
                                //.frame(width: proxy.size.width, height: proxy.size.height / 1.5)
                                    .frame(width: 400.0, height: 500.0).padding(.horizontal, -11.0)
                                    .onReceive(timer, perform: { _ in
                                        withAnimation {
                                            currentIndex = currentIndex <
                                                numberOfImages ? currentIndex + 1 : 0
                                        }
                                    }
                                    )
                                
                            }
                            .padding()
                            
                        }
                        //.padding(3)
                        
                        VStack (spacing : 20){
                            HStack (spacing:-20){
                                Text("Top CVs")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black).padding(.top, 250.0).padding(.trailing, 199.0).padding(.leading,-22.0)
                                NavigationLink(destination: TopCV()) {
                                    Text("See All")
                                        .font(.body)
                                        .fontWeight(.regular)
                                    .foregroundColor(Color("ButtonsColor")).padding(.top, 250.0)}
                            }.padding(.trailing, 31.0).padding(.leading, 41.0)
                            HStack(spacing: 12){
                                
                                NavigationLink(destination: HasenPage()){
                                    
                                    //Bader cv
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color("CVBackgroundColor").gradient)
                                            .frame(width: 110, height:115)
                                        
                                        Image("HasenPic")
                                            .resizable()
                                            .frame(width: 70, height:60)
                                            .clipShape(Circle()).frame(width:80, height: 65)
                                            .background(Circle()
                                                .fill(Color("CVBackgroundColor")))
                                            .padding(.bottom, 120)
                                        
                                        VStack{
                                            VStack {
                                                Text("Hasen Ahmed ")
                                                    .font(.footnote)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                
                                                Text("Sewing Of Men's Bishts")
                                                    .font(.system(size: 7, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("CVMajorColor"))
                                            }.padding(.top, 25)
                                            
                                            
                                            ZStack{
                                                Circle()
                                                    .stroke(
                                                        Color("ProgressBarBackground")
                                                            .opacity(0.5),
                                                        lineWidth: 6)
                                                    .frame(width: 36,height: 36)
                                                
                                                Circle()
                                                    .stroke(Color("ButtonsColor"),
                                                            lineWidth: 6)
                                                    .frame(width: 36, height: 36)
                                                
                                                Text("100%")
                                                    .font(.system(size: 8, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.white)
                                                
                                                
                                                
                                            }//.padding(.bottom, 5.0)
                                            
                                        }
                                        
                                    }//End Bader cv
                                }
                                
                                NavigationLink(destination: BaderPage()){
                                    //Bader cv
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color("CVBackgroundColor").gradient)
                                            .frame(width: 110, height:115)
                                        
                                        Image("BaderEx")
                                            .resizable()
                                            .frame(width: 70, height:60)
                                            .clipShape(Circle()).frame(width:80, height: 65)
                                            .background(Circle()
                                                .fill(Color("CVBackgroundColor")))
                                            .padding(.bottom, 120)
                                        
                                        VStack{
                                            VStack {
                                                Text("Bader Saud")
                                                    .font(.footnote)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                
                                                Text("Agriculture")
                                                    .font(.system(size: 7, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("CVMajorColor"))
                                            }.padding(.top, 25)
                                            
                                            
                                            ZStack{
                                                Circle()
                                                    .stroke(
                                                        Color("ProgressBarBackground")
                                                            .opacity(0.5),
                                                        lineWidth: 6)
                                                    .frame(width: 36,height: 36)
                                                
                                                Circle().trim(from: 0, to: 0.99)
                                                    .stroke(Color("ButtonsColor"),
                                                            lineWidth: 6)
                                                    .frame(width: 36, height: 36).rotationEffect(.degrees(-90))
                                                
                                                Text("99%")
                                                    .font(.system(size: 8, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.white)
                                                
                                                
                                            }//.padding(.bottom, 5.0)
                                            
                                        }
                                        
                                    }}//End Bader cv
                                
                                
                                NavigationLink(destination: FatimaPage()){
                                    
                                    //Bader cv
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color("CVBackgroundColor").gradient)
                                            .frame(width: 110, height:115)
                                        
                                        Image("FatimaPic")
                                            .resizable()
                                            .frame(width: 70, height:60)
                                            .clipShape(Circle()).frame(width:80, height: 65)
                                            .background(Circle()
                                                .fill(Color("CVBackgroundColor")))
                                            .padding(.bottom, 120)
                                        
                                        VStack{
                                            VStack {
                                                Text("Fatima Ali")
                                                    .font(.footnote)
                                                    .fontWeight(.heavy)
                                                    .foregroundColor(Color.white)
                                                
                                                Text("Pottery & Handicraft Trade")
                                                    .font(.system(size: 7, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color("CVMajorColor"))
                                            }.padding(.top, 25)
                                            
                                            
                                            ZStack{
                                                Circle()
                                                    .stroke(
                                                        Color("ProgressBarBackground")
                                                            .opacity(0.5),
                                                        lineWidth: 6)
                                                    .frame(width: 36,height: 36)
                                                
                                                Circle().trim(from: 0, to: 0.98)
                                                    .stroke(Color("ButtonsColor"),
                                                            lineWidth: 6)
                                                    .frame(width: 36, height: 36).rotationEffect(.degrees(-90))
                                                
                                                Text("98%")
                                                    .font(.system(size: 8, weight:.semibold))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.white)
                                                
                                                
                                            }//.padding(.bottom, 2.0)
                                            
                                        }
                                        
                                    }//End Bader cv
                                }
                                
                                
                            }//.padding(.top, 275.0)//End first row
                        }
                        
                    }
                    .padding(.bottom, 10)
                    
                    .sheet(isPresented: $showsheet1){
                        PotterySheet()}
                    .sheet(isPresented: $showsheet2){
                        BishtSheet()}
                    .sheet(isPresented: $showsheet3){
                        AgricultureSheet()}
                    
                }
                .navigationTitle("Explore")

                
            }
            
        }
  
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}
