//
//  TopCV.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct TopCV: View {
    
    @State private var sort: Int = 0
    
    
    var body: some View {
        
        ZStack{
            Color("MainBackgroundColor").ignoresSafeArea(.all)

                VStack{
                    ScrollView(.vertical){
                        //First row begin
                        HStack(spacing: 20){
                            //Hasen cv
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color("CVBackgroundColor").gradient)
                                    .frame(width: 165, height:160)
                                
                                Image("HasenPic")
                                    .resizable()
                                    .frame(width: 110, height:100)
                                    .clipShape(Circle())
                                    .frame(width: 120, height:110)
                                    .background(Circle().fill(Color("CVBackgroundColor")))
                                    .clipShape(Circle())
                                    .padding(.bottom, 160)
                                
                                VStack{
                                    VStack {
                                        Text("Hasen Ahmed")
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Sewing of men's bishts")
                                            .font(.caption)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("CVMajorColor"))
                                    }.padding(.top, 45)
                                    
                                    
                                    HStack(spacing: 40.0){
                                        ZStack{
                                            Circle()
                                                .stroke(
                                                    Color("ProgressBarBackground")
                                                        .opacity(0.5),
                                                    lineWidth: 6)
                                                .frame(width: 38,height: 38)
                                            
                                            Circle()
                                                .stroke(Color("ButtonsColor"),
                                                        lineWidth: 6)
                                                .frame(width: 38, height: 38)
                                            
                                            Text("100%")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                            
                                        }
                                        
                                        NavigationLink(destination: HasenPage()) {
                                            Text("Details")
                                                .fontWeight(.regular)
                                                .bold()
                                                .frame(width: 56,height: 17)
                                                .background(Color("ButtonsColor"))
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .cornerRadius(8)
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }//End Hasen cv
                            
                            //Bader cv
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color("CVBackgroundColor").gradient)
                                    .frame(width: 165, height:160)
                                
                                Image("BaderPic")
                                    .resizable()
                                    .frame(width: 110, height:100)
                                    .clipShape(Circle())
                                    .frame(width: 120, height:110)
                                    .background(Circle().fill(Color("CVBackgroundColor")))
                                    .clipShape(Circle())
                                    .padding(.bottom, 160)
                                
                                VStack{
                                    VStack {
                                        Text("Bader Saud")
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Agriculture")
                                            .font(.caption)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("CVMajorColor"))
                                    }.padding(.top, 45)
                                    
                                    
                                    HStack(spacing: 40.0){
                                        ZStack{
                                            Circle()
                                                .stroke(
                                                    Color("ProgressBarBackground")
                                                        .opacity(0.5),
                                                    lineWidth: 6)
                                                .frame(width: 38,height: 38)
                                            
                                            Circle()
                                                .trim(from:0 , to: 0.99)
                                                .stroke(Color("ButtonsColor"),
                                                        lineWidth: 6)
                                                .rotationEffect(.degrees(-90))
                                                .frame(width: 38, height: 38)
                                            
                                            Text("99%")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                            
                                        }
                                        
                                        NavigationLink(destination: BaderPage()) {
                                            Text("Details")
                                                .fontWeight(.regular)
                                                .bold()
                                                .frame(width: 56,height: 17)
                                                .background(Color("ButtonsColor"))
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .cornerRadius(8)
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }//End Bader cv
                        }//End first row
                        
                        
                        //second row begin
                        HStack(spacing: 20){
                            //Fatima cv
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color("CVBackgroundColor").gradient)
                                    .frame(width: 165, height:160)
                                
                                Image("FatimaPic")
                                    .resizable()
                                    .frame(width: 110, height:100)
                                    .clipShape(Circle())
                                    .frame(width: 120, height:110)
                                    .background(Circle().fill(Color("CVBackgroundColor")))
                                    .clipShape(Circle())
                                    .padding(.bottom, 160)
                                
                                VStack{
                                    VStack {
                                        Text("Fatima Ali")
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Pottery & handicraft trade")
                                            .font(.caption)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("CVMajorColor"))
                                    }.padding(.top, 45)
                                    
                                    
                                    HStack(spacing: 40.0){
                                        ZStack{
                                            Circle()
                                                .stroke(
                                                    Color("ProgressBarBackground")
                                                        .opacity(0.5),
                                                    lineWidth: 6)
                                                .frame(width: 38,height: 38)
                                            
                                            Circle()
                                                .trim(from:0 , to: 0.98 )
                                                .stroke(Color("ButtonsColor"),
                                                        lineWidth: 6)
                                                .rotationEffect(.degrees(-90))
                                                .frame(width: 38, height: 38)
                                            
                                            Text("98%")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                            
                                        }
                                        
                                        NavigationLink(destination: FatimaPage()) {
                                            Text("Details")
                                                .fontWeight(.regular)
                                                .bold()
                                                .frame(width: 56,height: 17)
                                                .background(Color("ButtonsColor"))
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .cornerRadius(8)
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }//End Fatima cv
                            
                            //Aisha cv
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color("CVBackgroundColor").gradient)
                                    .frame(width: 165, height:160)
                                
                                Image("AishaPic")
                                    .resizable()
                                    .frame(width: 110, height:100)
                                    .clipShape(Circle())
                                    .frame(width: 120, height:110)
                                    .background(Circle().fill(Color("CVBackgroundColor")))
                                    .clipShape(Circle())
                                    .padding(.bottom, 160)
                                
                                VStack{
                                    VStack {
                                        Text("Aisha Saed")
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                        
                                        Text("Pottery & handicraft trade")
                                            .font(.caption)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("CVMajorColor"))
                                    }.padding(.top, 45)
                                    
                                    
                                    HStack(spacing: 40.0){
                                        ZStack{
                                            Circle()
                                                .stroke(
                                                    Color("ProgressBarBackground")
                                                        .opacity(0.5),
                                                    lineWidth: 6)
                                                .frame(width: 38,height: 38)
                                            
                                            Circle()
                                                .trim(from:0 , to: 0.82 )
                                                .stroke(Color("ButtonsColor"),
                                                        lineWidth: 6)
                                                .rotationEffect(.degrees(-90))
                                                .frame(width: 38, height: 38)
                                            
                                            Text("82%")
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color.white)
                                            
                                        }
                                        
                                        NavigationLink(destination: AishaPage()) {
                                            Text("Details")
                                                .fontWeight(.regular)
                                                .bold()
                                                .frame(width: 56,height: 17)
                                                .background(Color("ButtonsColor"))
                                                .foregroundColor(.white)
                                                .font(.caption)
                                                .cornerRadius(8)
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }//End Aisha cv
                        }//End second row
                        
                        
                    }
                    
                    
                    
                    
                }
                
        
            .accentColor(Color("ButtonsColor"))

            
        }
        
    }
}
struct TopCV_Previews: PreviewProvider {
    static var previews: some View {
        TopCV()
    }
}

