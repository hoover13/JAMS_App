//
//  SheetViewTwo.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI
let characterNames = ["Cinderella", "Anastasia and Drizella", "Prince Charles", "Fairy God Mother", "Drizella", "Anastasia"]


struct SheetViewTwo: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 90)
            
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 100)
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 100)
                    
                }
                Spacer()
                HStack {
                    Image("prince")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 200)
                    Text("In walks \(characterNames[2])... \"\(characterNames[0]), the wedding is off. I can't believe you've done this. It's over, smell you later.\"")
                        .padding()
                        
                    
                    
                    
                }
                HStack {
                    Image("shop")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 300)
                    Text("While walking down the road aimlessly, defeated and heartbroken, \(characterNames[0]) notices the Fairy God Mother's Cobbleshop. \"I know that old hag has something to do with this\", she said. \"I'm gonna go in there and give her a piece of my mind, she must have a hand to play in all this.\"")
                        .padding()
                        
                }
                Spacer()
            }
            
            
         
               
                
            
                
            }
        
        }
    }


#Preview {
    SheetViewTwo()
}

