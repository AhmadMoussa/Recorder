//
//  Recording.swift
//  Recorder
//
//  Created by Christine Baertl on 11/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit
import AVFoundation

class Recording: NSObject {
    var title: String!
    var recording: AVAudioFile!
    
    init(title: String, recording: AVAudioFile){
        self.title = title
        self.recording = recording
    }
}
