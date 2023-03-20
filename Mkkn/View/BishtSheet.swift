//
//  BishtSheet.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct BishtSheet: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Sewing of men's bishts")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Participants in this program are introduced to sewing the Hasawi bisht, which is woven manually and traditionally in Al-Ahsa, with great accuracy by spinning threads, making clothes, and then embroidering it manually.\nThe learners will learn how to make the bisht, which has seven steps that are all independent of one another and is carried out by a special worker, and he cannot do the other stage, then comes the compilation stage, which is the last stage, after which the bisht is ready.")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.black).padding()
                
                VStack(spacing:12){
                    
                    HStack{
                        Image(systemName: "mappin.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Al-Ahsa")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 235.0)
                    
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("12/5/2023 - 12/8/2023")
                            .font(.system(size: 14.5))
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black).frame(height: 10)
                    }.padding(.trailing, 145)
                    
                    HStack{
                        Image(systemName: "location.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Bisht School")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)     .frame(height: 10)

                    }.padding(.trailing, 200)
                    
                    HStack{
                        Image(systemName: "timer.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("9am to 1pm")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 205)
                    
                    HStack{
                        Image(systemName: "dollarsign.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("The program is scholarship, and the tools needed is provided to participants")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.leading, 11.0)
                    
                    HStack{
                        Image(systemName: "person.crop.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Shaker Shehab ")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 175.0)
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color.init("ButtonsColor"))
                            .frame(width: 300 , height: 44)                 .cornerRadius(8)
                            .padding(.top, 20.0)
                        
                        NavigationLink {
                            Enroll_program()
                        } label: {
                            Text("Enroll the program")
                                .fontWeight(.bold)
                                .padding(.top, 20.0)
                                .foregroundColor(Color.white)
                        }
                    }

                }
                                
            }.presentationDetents([.large,.medium,.fraction(0.75)])
            .frame(width: 360)
        }
        .accentColor(Color("ButtonsColor"))

    }
}

struct BishtSheet_Previews: PreviewProvider {
    static var previews: some View {
        BishtSheet()
    }
}
