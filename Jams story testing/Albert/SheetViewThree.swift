//
//  SheetViewThree.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct SheetViewThree: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 100)
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 90)
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 100)
                }
                Text("\(characterNames[0]) Walks into the Fairy God Mother's Cobbleshop and the \(characterNames[3]) is no where to be seen... \(characterNames[0]) walks around the shop curiously, she notices many magical treats and trinkets. She walks down the shoe aisle and looks at the assortment of different shoes for sale. She sees glass slippers, copper slippers, and wood slippers.")
                    .padding()
               
                VStack{
                    HStack {
                        Image("glassSlipper")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                        Text("Glass Slippers: $6.99 Fit for a royal princess, ONLY for the wealthy!")
                           
                        
                    }
                   
                    HStack {
                        Image("copperSlipper")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                        Text("Copper Slippers: $0.35 Fit for anyone who can't afford better!")
                      
                            
                    }
                    HStack {
                        Image("woodSlipper")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                        
                        VStack {
                            Text("Wood Slippers: $0.02")
                            Text("Fit for the poorest of poor! Will give")
                            Text("splinters!")
                            
                        }
                            
                            
                            
                    }
                    
                        
                    
                }
               
                Text("\"The wood shoes are all I can afford...\" Cinderella purchased her new wooden shoes and left her last $0.02 cents on the counter. ")
                    .padding()
                Spacer()
                    
                
              
                
                
                
                
            }
            
            
            
            
        }
    }
}
#Preview {
    SheetViewThree()
}

enum ShoeTypes {
    case glassSlippers
    case copperSlippers
    case woodSlippers
}
func cinderellaLooksAtShoes(shoes: ShoeTypes) -> String {
    switch shoes {
    case .glassSlippers:
        "\"Fit for a royal princess,\" \"These are too expensive...\" said Cinderella."
    case .copperSlippers:
        "\"Fit for anyone who can't afford better,\" \"These are too expensive too...\" said Cinderella."
    case .woodSlippers:
        "\"Fit for the poorest of poor! Will give splinters! Buy at own risk!\" \"These are all I can afford...\" so \(characterNames[0]) purchased her new, uncomfortable shoes and left her last 0.02 cents on the counter of the Cobbleshop."
    }
}
