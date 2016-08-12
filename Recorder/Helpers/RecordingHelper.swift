//
//  RecordingHelper.swift
//  Recorder
//
//  Created by Christine Baertl on 11/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit
import AVFoundation

class RecordingHelper: AVAudioRecorder {
    var recordSettings: [String: AnyObject]
    var audioSession: AVAudioSession!
    
    func directoryURL(recordingTitle: String) -> NSURL? {
        let fileManager = NSFileManager.defaultManager()
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let documentDirectory = urls[0] as NSURL
        let soundURL = documentDirectory.URLByAppendingPathComponent(recordingTitle)
        return soundURL
    }
    
    func setSession(){
        if(self.recording){
            do {
                self.stop()
                try audioSession.setActive(false)
            } catch {
                print("is not recording")
            }
        } else {
            do{
                try audioSession.setActive(true)
                record()
            } catch {
                print("is recoridng")
            }
        }
    }

    override init(){
        
        self.audioSession = AVAudioSession.sharedInstance()
        self.recordSettings = [AVSampleRateKey : NSNumber(float: Float(44100.0)),
                         AVFormatIDKey : NSNumber(int: Int32(kAudioFormatMPEG4AAC)),
                         AVNumberOfChannelsKey : NSNumber(int: 1),
                         AVEncoderAudioQualityKey : NSNumber(int: Int32(AVAudioQuality.Medium.rawValue))]
        super.init()
        
    }
   
}
