//
//  ContentView.swift
//  Project8_RecreateFigmaTemplate
//
//  Created by Willie Green on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    
    //Reference Data Struct
    
    var cards: [Card] = cardsData
    
    //Slider Variable
    @State private var isLocal = true
    
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .imageScale(.large)
                Spacer()
                
                ZStack{
                    Capsule()
                        .frame(width: 200, height: 44)
                        .foregroundColor(Color(red: 0.796, green: 0.644, blue: 0.588))
                    Capsule()
                        .frame(width: 100, height: 32)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.876, green: 0.784, blue: 0.755)/*@END_MENU_TOKEN@*/)
                        .offset(x: isLocal ? -43:43)
                        .animation(.spring)
                    HStack{
                        Text("Stay Local")
                            .font(.caption)
                            .offset(x: -12)
                        Text("Go Global")
                            .font(.caption)
                            .offset(x: 12)
                        
                    }
                    .onTapGesture {
                        self.isLocal.toggle()
                    }
                }
                Spacer()
                Image("userImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                    //.frame(width: 44)
            }
            .padding(10)
            .frame(width: 400)
            
            List{
                ForEach(cards) {item in
                CardView(card: item)}
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color(red: 0.95, green: 0.949, blue: 0.967))
            
        }
    }
}

#Preview {
    ContentView()
}
