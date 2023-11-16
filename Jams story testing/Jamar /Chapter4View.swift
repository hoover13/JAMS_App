//
//  Chapter4View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/15/23.
//
 
import SwiftUI
import AVKit
 
struct Chapter4View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker

    var body: some View {
        
        VStack {
            Text("Chapter 4")
                .font(.largeTitle)
                .bold()
            
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "cinderella", withExtension: "mp4")!))
                .frame(height: 400)
                .cornerRadius(20)
                .padding()
              
            
            Button("Unlock Chapter 5") {
                chapterUnlocker.isChapter5Disabled = false
            }
        }
        
        
    }
}




#Preview {
    Chapter4View()
}
