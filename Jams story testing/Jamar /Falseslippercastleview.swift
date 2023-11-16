//
//  Falseslippercastle.swift
//  Jams story testing
//
//  Created by Jamar Morgan on 11/16/23.
//

import SwiftUI

struct Falseslippercastle: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    var body: some View {
        
        NavigationView {
            ZStack{
                LinearGradient(colors: [.yellow, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Text("Chapter 4")
                        .bold()
                    Spacer()
                    Image("Carriage")
                        .resizable()
                        .scaledToFit()
                    ScrollView {
                        Text("""
                The princess reaches the carriage, out of breath and barefoot but the prince tells her to go back for the slippers as they were a gift from him to her.
                She runs back and retrieves the slippers too hastily, not knowing that they are fake and heads back to the castle.
                Once both of them start to settle in the castle the prince sees that her slippers are missing their shimmer he examines them further and sees the royal seal missing.
                He starts to get angry and upset because the slippers were a gift from his late mother.
                She begs an pleads for forgiveness but he can't forgiver her carelessness, and tells her they will continue their conversation in the morning.
                Cinderella feels terrible and ashamed from what happened and iss terrified of what's to come
                """)
                        
                        
                    }
                     
                    NavigationLink {
                        MainView()
                    } label: { 
                        Text("Unlock Chapter 5")
                            
                                 
                    }
                    .onTapGesture {
                        print("Unlocked")
                        chapterUnlocker.isChapter5Disabled = false
                    }


                     
                     
                }
                .padding()
            }
        }
    }
    
}


   


#Preview {
Falseslippercastle()
        .environmentObject(ChapterUnlocker())
}

            
           
