//
//  NewRecordingViewController.swift
//  Recorder
//
//  Created by Christine Baertl on 13/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit
import AVFoundation

class NewRecordingViewController: UIViewController {

     var audioRecorder: AVAudioRecorder!
     var audioPlayer: AVAudioPlayer!
     let recordSettings = [AVSampleRateKey : NSNumber(float: Float(44100.0)),
     AVFormatIDKey : NSNumber(int: Int32(kAudioFormatMPEG4AAC)),
     AVNumberOfChannelsKey : NSNumber(int: 1),
     AVEncoderAudioQualityKey : NSNumber(int: Int32(AVAudioQuality.Medium.rawValue))]
     
     @IBOutlet weak var titleLabel: UITextField?
     
     override func viewDidLoad() {
     super.viewDidLoad()
     
     let audioSession = AVAudioSession.sharedInstance()
     do {
     try audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord)
     try audioRecorder = AVAudioRecorder(URL: self.directoryURL()!,
     settings: recordSettings)
     audioRecorder.prepareToRecord()
     } catch {
     }
     // Do any additional setup after loading the view, typically from a nib.
     }
     
     func directoryURL() -> NSURL? {
     let fileManager = NSFileManager.defaultManager()
     let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
     let documentDirectory = urls[0] as NSURL
     
     if let name = titleLabel!.text{
     let soundURL = documentDirectory.URLByAppendingPathComponent("\(name).m4a")
     print("\(soundURL)\n")
     return soundURL
     }
     
     let soundURL = documentDirectory.URLByAppendingPathComponent("recording.m4a")
     print("\(soundURL)")
     return soundURL
     
     }
     
     @IBAction func doRecordAction(sender: AnyObject) {
     if !audioRecorder.recording {
     let audioSession = AVAudioSession.sharedInstance()
     do {
     try audioSession.setActive(true)
     audioRecorder.record()
     } catch {
     }
     }
     }
     @IBAction func doStopRecordingAction(sender: AnyObject) {
     audioRecorder.stop()
     let audioSession = AVAudioSession.sharedInstance()
     
     do {
     try audioSession.setActive(false)
     } catch {
     }
     }
     
     @IBAction func doPlayAction(sender: AnyObject) {
     if (!audioRecorder.recording){
     do {
     try audioPlayer = AVAudioPlayer(contentsOfURL: audioRecorder.url)
     audioPlayer.play()
     } catch {
     }
     }
     }
     
     
     
 
}
