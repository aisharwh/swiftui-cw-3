//
//  ContentView.swift
//  cw2-2
//
//  Created by MacBook` on 25/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var kd = ""
    var body: some View {
        
        ZStack {
            VStack{
                Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                    Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("العمله بالدينار", text: $kd)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        

                    VStack(spacing: 30){
                        HStack(spacing: 40){
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let dollars = ( Double (kd) ?? 0) * 3.28
                            let dollar = String (format: "%.2f", dollars)
                            Text("$" + dollar)
                        }
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            let pounds = ( Double (kd) ?? 0) * 2.46
                            let pound = String (format: "%.2f", pounds)
                            Text("£" + pound)
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            let euros = ( Double (kd) ?? 0) * 2.70
                            let euro = String (format: "%.2f", euros)
                            Text("€" + euro)
                        }
                    }.padding(.top, 50)
                    Spacer()
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
