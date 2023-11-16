//
//  VideoPlayView.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI
import AVKit

struct VideoPlayView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "cinderella",
                                                      withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(width: 320, height: 180, alignment: .center)
            
            
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero) 
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding()
            }
        }
    }
}

#Preview {
    VideoPlayView()
}
