//
//  AishaPage.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI
import MessageUI

struct AishaPage: View {
    
    @State var isPresented = false
    @State var result: Result<MFMailComposeResult, any Error>? = nil
    
    var body: some View {
        VStack {
            ScrollView(.vertical){
                
                Image("AishaPic")
                    .resizable()
                    .frame(width:127,height:127)
                    .clipShape(Circle())
                
                
                Text("Aisha Saed")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 325, height: 390)
                        .shadow(color:Color("shadowColor"), radius: 5, x:0.5, y: 0.5)
                        .padding(.leading,10)
                    VStack{
                        VStack(alignment: .leading, spacing: 12){
                            HStack{
                                Text("Status:")
                                    .foregroundColor(Color("ButtonsColor"))
                                
                                
                                Text("  ")
                            }
                            
                            HStack{
                                Text("Nationality:")
                                    .foregroundColor(Color("ButtonsColor"))
                                
                                Text("Saudi")
                                
                            }
                            
                            HStack{
                                Text("Location:")
                                    .foregroundColor(Color("ButtonsColor"))
                                
                                Text("Mecca")
                            }
                            HStack{
                                Text("Education level:")
                                    .foregroundColor(Color("ButtonsColor"))
                                
                                Text("High School")
                            }
                            HStack{
                                Text("Experience:")
                                    .foregroundColor(Color("ButtonsColor"))
                                
                                Text("Seller for two years")
                            }
                            
                            Text("Skills:")
                                .foregroundColor(Color("ButtonsColor"))
                            
                            Text("Sewing, Drawing, Creativity,  Time management")
                            
                            
                            Text("Certification:")
                                .foregroundColor(Color("ButtonsColor"))
                            
                            Text("Pottery and handicraft trade program")
                            //  .padding(.top,20)
                            
                            
                        }.padding(.trailing)}.padding(.leading)
                    
                    
                    
                    
                }.padding(.all)
                Button {
                    if MFMailComposeViewController.canSendMail() {
                        isPresented = true
                    }else {
                        print("Can't send")
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("ButtonsColor"))
                            .frame(width: 300,height: 48)
                        VStack(spacing: 1.5){
                            
                            Image(systemName: "envelope")
                                .resizable()
                                .frame(width:32,height:22)
                                .padding(.top,5)
                            
                                .foregroundColor(Color.white)
                            Text("Email")
                                .bold()
                                .foregroundColor(Color.white)
                            
                        }
                        
                    }
                    
                }
                
            }
            
            .sheet(isPresented: $isPresented){
                MailView(result: self.$result){ composer in
                    composer.setSubject(" ")
                    composer.setToRecipients(["npo.mkkn@gmail.com"])
                }
            }
        }
        
    }
    
}

struct AishaPage_Previews: PreviewProvider {
    static var previews: some View {
        AishaPage()
    }
}
