//
//  AudioPlayer.swift
//  avfucking-audio
//
//  Created by gossip on 9/30/22.
//

import Foundation
//import UIKit
import SwiftUI
import AVFAudio
import AVKit
import AVRouting
import AVFoundation


//class AVAudioFile : NSObject {}
class AVAudioEngine : NSObject {
    static let instance = AVAudioEngine()
    var player: AVAudioPlayer?
    
    
    func playKick() {
        guard let url = Bundle.main.url(forResource: "Kick", withExtension: ".wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    func playClap() {
        guard let url = Bundle.main.url(forResource: "808Clap", withExtension: ".wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    func playOHat() {
        guard let url = Bundle.main.url(forResource: "OHat", withExtension: ".wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    func playCHat() {
        guard let url = Bundle.main.url(forResource: "CHat", withExtension: ".wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}

struct AudioPlayer: View {
    
    var body: some View {
        VStack {
            HStack(spacing: 40) {
                Button("CHat") {
                    AVAudioEngine.instance.playCHat()
                }.padding(40)
                Button("OHat") {
                    AVAudioEngine.instance.playOHat()
                }.padding(40)
                
            }
            HStack(spacing: 40) {
                Button("Kick") {
                    AVAudioEngine.instance.playKick()
                }.padding(40)
                Button("Clap") {
                    AVAudioEngine.instance.playClap()
                }.padding(40)
            }
        }
    }
}


struct AudioPlayer_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayer()
        
    }
}
