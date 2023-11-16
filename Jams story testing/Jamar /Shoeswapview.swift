//
//  Shoeswapview.swift
//  Jams story testing
//
//  Created by Jamar Morgan on 11/16/23.
//

import SwiftUI

struct Shoeswapview: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.pink, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Chapter 4")
                    .bold()
                Spacer()
                Image("AnastasiaDrizella")
                    .resizable()
                    .scaledToFit()
                ScrollView {
                    Text("""
        Anastasia and Drizella sees a perfect opportunity to make the switch. Both sisters look at eachother with a devilish grin and whisper to eachother, "hurry before it's too late". They take the royal glass slippers and place the PCP slippers where the royals were. They both run off cackling and celebrating their victory over Cinderella.
        """)
                    
                    
                    
                    
                    
                }
            }
            .padding()
        }
    }
}
 


#Preview {
    Shoeswapview()
}
