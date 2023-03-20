//
//  KhalidPage.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//

import SwiftUI
import MessageUI


struct KhalidPage: View {
    
    @State var isPresented = false
    @State var result: Result<MFMailComposeResult, any Error>? = nil
    
    var body: some View {
        VStack {
            ScrollView(.vertical){

            
            Image("KhalidPic")
                .resizable()
                .frame(width:127,height:127)
                .clipShape(Circle())
            
            
            Text("Khlaid Fahad")
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
                            
                            Text("Najran")
                        }
                        HStack{
                            Text("Education level:")
                                .foregroundColor(Color("ButtonsColor"))
                            
                            Text("High School")
                        }
                        HStack{
                            Text("Experience:")
                                .foregroundColor(Color("ButtonsColor"))
                            
                            Text("Accountant for three years")
                        }
                        
                        Text("Skills:")
                            .foregroundColor(Color("ButtonsColor"))
                        
                        Text("analysis, Creativity")
                        
                        
                        Text("Certification:")
                            .foregroundColor(Color("ButtonsColor"))
                        
                        Text("Sewing of men's bishts program")
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
//                    Text("Email")
//                        .bold()
//                        .frame(width: 330,height: 53)
//                        .background(Color("ButtonsColor"))
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
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

struct KhalidPage_Previews: PreviewProvider {
    static var previews: some View {
        KhalidPage()
    }
}
