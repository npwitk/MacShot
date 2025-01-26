//
//  StreamOutput.swift
//  MacShot
//
//  Created by Nonprawich I. on 26/1/25.
//

import SwiftUI
import ScreenCaptureKit

class StreamOutput: NSObject, SCStreamOutput, SCStreamDelegate, SCRecordingOutputDelegate {
    
    var finishRecording: (() -> Void)?
    
    func stream(_ stream: SCStream, didStopWithError error: any Error) {
        finishRecording?()
    }
    
    func recordingOutput(_ recordingOutput: SCRecordingOutput, didFailWithError error: any Error) {
        finishRecording?()
    }
    
    func recordingOutputDidFinishRecording(_ recordingOutput: SCRecordingOutput) {
        finishRecording?()
    }

}
