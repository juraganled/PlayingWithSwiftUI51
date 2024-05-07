//
//  ContentView.swift
//  PlayingWithSwiftUI51
//
//  Created by Ricky Suprayudi on 06/05/24.
//

import SwiftUI

struct ContentView: View {
    let url = URL(string: "https://cdn-icons-png.flaticon.com/128/3753/3753579.png")!
    
    var body: some View {
        HStack {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding()
                    .background(Color("MyBackground"))
                    .clipShape(                    
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    )
            } placeholder: {
                ProgressView()
            }

            VStack {
                HStack {
                    Text("Maxwell")
                        .font(.custom("MOXA Bestine", size: 30))
                    Spacer()
                }
                HStack {
                    Text("a cute cat")
                        .font(.system(size: 15))
                    Spacer()
                }
            }
            VStack{
                Text("2023-12-12")
                
            }
        }
        .padding()
        .background(.gray)
        .foregroundColor(Color("MainColor"))
    }
}

#Preview {
    ContentView()
}
