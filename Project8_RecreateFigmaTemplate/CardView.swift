//
//  CardView.swift
//  Project8_RecreateFigmaTemplate
//
//  Created by Willie Green on 10/18/23.
//

import SwiftUI

struct CardView: View {
    
    var card: Card
    
    
    @State private var isLiked = false
    
    @State private var isExpanded = false
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
                Image(card.backgroundImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 325.0)
                    .scaledToFit()
                    .cornerRadius(20)
                HStack(alignment: .lastTextBaseline){
                    Text("Ree")
                        .font(.footnote)
                        .frame(width: 50, height: 35)
                        .background(Color(red: 1, green: 0.584, blue: 0.555))
                        .cornerRadius(10)
                    Text("Experience")
                        .font(.footnote)
                        .frame(width: 100, height: 35)
                        .background(Color(red: 0.876, green: 0.784, blue: 0.755))
                        .cornerRadius(10)
                    Text("Class")
                        .font(.footnote)
                        .frame(width: 70, height: 35)
                        .background(Color(red: 0.876, green: 0.784, blue: 0.755))
                        .cornerRadius(10)
                }
                .padding(10)
                .frame(width: 330, alignment: .leading)
            ZStack{
                    Rectangle()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 1.0, opacity: 0.9))
                        .frame(width: 305, height: isExpanded ? 300 : 200)
                        .cornerRadius(10)
                VStack(alignment: .leading){
                        HStack{
                            Image("userImage")
                                .resizable()
                                .scaledToFit()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 40)
                            Text("John Doe")
                            Spacer()
                            HeartButton(isLiked: isLiked)
                            Image(systemName: "pin")
                            Image(systemName: "bubble.right")
                        }
                        Text(card.date)
                            .font(.footnote)
                            .fontWeight(.thin)
                        Text(card.title)
                        Text(card.description)
                        .font(.caption)
                        .onTapGesture {
                            self.isExpanded.toggle()
                    }
                }
                .padding(20)
                .frame(width: 330)
                }
            .offset(x: 10, y: isExpanded ? 135 : 275)
            .frame(width: 305, height: isExpanded ? 375 : 200)
            .animation(.spring)
        }
        .padding(.vertical, 10.0)
    }
        
}

#Preview {
    ContentView()
}
