//
//  Enroll_program.swift
//  Mkkn
//
//  Created by Thamra Mohammad Al Atm on 28/08/1444 AH.
//


import SwiftUI
struct Location {
    static let allLocations = [
        "Saudi Arabia",
        "Qatar",
        "UAE",
        "Bahrain",
        "Oman",
        "Kuwait"
    ]
}

struct Enroll_program: View {
    @State private var phone = ""
    @State private var city = ""
    @State private var firstname = ""
    @State private var id = ""
    @State private var location = ""
    @State private var termsAccepted = false
    @State private var emaile = ""
    @State private var selection = 1
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 1961, month: 1, day: 1)
        let endComponents = DateComponents(year: 2005, month: 12, day: 31)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        VStack{
            NavigationView {
                
                
                Form  {
                    
                    
                    Section(footer:Text("Mkkn team is thrilled to welcome you.\nWe hope you’ll have an amazing experience here!").font(.headline).fontWeight(.semibold).foregroundColor(Color("ButtonsColor")).multilineTextAlignment(.leading)){
                    }
                    
                    Section {
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(Color("LightGray"))
                            TextField("FullName",
                                      text: $firstname)}
                    }
                    
                    
                    Section{
                        HStack{
                            Image(systemName: "flag")
                                .foregroundColor(Color("LightGray"))
                           
                            
                            
                            Picker(selection: $location,
                                   label: Text("Nationality").foregroundColor(Color("LightGray"))) {
                                ForEach(Location.allLocations, id: \.self) { location in
                                    Text(location).tag(location)
                                }
                            }
                            
                        }}
                    
                    Section{
                        
                        HStack(spacing: 78){
                            
                            HStack{
                                Image(systemName: "calendar")
                                    .foregroundColor(Color("LightGray"))
                                Text("Birth Date").foregroundColor(Color("LightGray"))
                                
                            }
                            HStack{
                                Text(date.formatted(.dateTime.day().month().year()))
                                    .foregroundColor(Color.gray)
                                Image(systemName: "chevron.up.chevron.down")
                                    .foregroundColor(Color.gray)
                                    .font(.callout)
                            }
                                .overlay{
                                    
                                    DatePicker("",selection: $date, displayedComponents: [.date])
                                        .blendMode(.destinationOver)
                                }.accentColor(Color("ButtonsColor"))
                            
                            
                            
                            
                        }}
                    
                    
                    Section{
                        //Section(header: Text("Register")) {
                        HStack{
                            Image(systemName: "staroflife")
                                .foregroundColor(Color("LightGray"))
                            TextField("ID",
                                      text: $id).keyboardType(.decimalPad)}}
                    
                    Section{
                        HStack{
                            Image(systemName: "figure.walk")
                                .foregroundColor(Color("LightGray"))
                            //                               .padding(.trailing, 105.0)
                            
                            Text("Gender")
                                .fontWeight(.regular)
                                .foregroundColor(Color("LightGray"))
                            //
                            VStack {
                                Picker(selection: $selection, label: Text("")) {
                                    
                                    Text("Female").tag(1)
                                    Text("Male").tag(2)
                                    
                                }
                            }
                            
                        }
                    }
                    
                    Section{
                        Section {
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundColor(Color("LightGray"))
                                TextField("City",
                                          text: $city)}
                        }
                    }
                    Section {
                        HStack{
                            Image(systemName: "envelope")
                                .foregroundColor(Color("LightGray"))
                            TextField("Email",
                                      text: $emaile)}
                    }
                    
                    Section {
                        HStack{
                            Image(systemName: "phone")
                                .foregroundColor(Color("LightGray"))
                            TextField("Phone Number",
                                      text: $phone).keyboardType(.decimalPad)}
                    }
                    
                    //                                                Button(action: {}) {
                    //                                                    Text("Submit")
                    //                                                        .bold()
                    //                                                        .frame(width: 335,height: 46)
                    //                                                        .background(Color("ButtonsColor"))
                    //                                                        .foregroundColor(.white)
                    //                                                        .cornerRadius(8)
                    //                                                }
                    //                                                .padding()
                    //                     }
                    
                    
                }.navigationBarTitle(Text("Register")).accentColor(Color("LightGray"))
                
                
                
                
            }
            .accentColor(Color("ButtonsColor"))
            NavigationLink(destination: Thanks()) {
                Text("Submit")
                    .bold()
                    .frame(width: 335,height: 46)
                    .background(Color("ButtonsColor"))
                    .foregroundColor(.white)
                    .cornerRadius(8)
                
            }
            
            
        }
        
    }
    
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Enroll_program()
    }
}

