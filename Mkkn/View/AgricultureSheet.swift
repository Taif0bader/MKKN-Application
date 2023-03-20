//
//  AgricultureSheet.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct AgricultureSheet: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Agriculture")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("The program aims to strengthen participants' national capacities and qualify them for the labor market in the fields of agricultural production, agricultural services, manufacturing, and marketing of agricultural products,in addition to implementing a scientific and practical training for the learners.")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.black).padding()
                
                VStack(spacing:12){
                    
                    HStack{
                        Image(systemName: "mappin.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Abha")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 255)
                    
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("12/3/2023 - 12/6/2023")
                            .font(.system(size: 14.5))
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black).frame(height: 10)
                    }.padding(.trailing, 143)
                    
                    HStack{
                        Image(systemName: "location.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("EDU Farm")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 220)
                    
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
                    }.padding(.leading, 15)
                    
                    HStack{
                        Image(systemName: "person.crop.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Eng.Ahmed Sami")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.leading, -155)
                    
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
            }.presentationDetents([.large,.medium,.fraction(0.75)]).frame(width: 360)

        }
    }
}

struct AgricultureSheet_Previews: PreviewProvider {
    static var previews: some View {
        AgricultureSheet()
    }
}
