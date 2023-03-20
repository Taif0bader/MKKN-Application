//
//  PotterySheet.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI

struct PotterySheet: View {
    var body: some View {
        NavigationView{
            VStack{
                
                
                Text("Pottery and handicraft trade")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Participants in this program are introduced to the craft of pottery creation with a focus on shaping clay to produce items that can be utilized on a daily basis.                              \nIn addition to learning about kiln stages and how to manually shape clay using a clay wheel, learners will produce items for each technique they learn.")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.black).padding()
                
                VStack(spacing:12){
                    
                    HStack{
                        Image(systemName: "mappin.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Riyadh")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 235.0)
                    
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("1/4/2023 - 12/6/2023")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 131.0)
                    
                    HStack{
                        Image(systemName: "location.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("EDU Academy")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 180.0)
                    
                    HStack{
                        Image(systemName: "timer.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("9am to 1pm")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.trailing, 200.0)
                    
                    HStack{
                        Image(systemName: "dollarsign.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("The program is scholarship, and the tools needed is provided to participants ")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.horizontal, 22.0)
                    
                    HStack{
                        Image(systemName: "person.crop.square")
                            .foregroundColor(Color("ButtonsColor"))
                        Text("Eng.Sara Mohammad")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }.padding(.leading, -130.0)
                    
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color.init("ButtonsColor"))
                            .frame(width: 300 , height: 44)                .cornerRadius(8)
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

struct PotterySheet_Previews: PreviewProvider {
    static var previews: some View {
        PotterySheet()
    }
}

