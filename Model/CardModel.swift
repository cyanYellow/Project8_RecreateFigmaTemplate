//
//  CardModel.swift
//  Project8_RecreateFigmaTemplate
//
//  Created by Willie Green on 10/18/23.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var backgroundImage: String
    var date: String
    var title: String
    var description: String
}


struct HeartButton: View {
    
    // Heart Variables
    @State var isLiked = UserDefaults.standard.bool(forKey: "Tap")
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
            UserDefaults.standard.set(isLiked, forKey: "Tap")
            
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .foregroundColor(.black)
        })
    }
}
