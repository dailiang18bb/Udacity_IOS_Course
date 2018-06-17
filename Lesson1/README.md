






## Lesson 3


* help documentation
* viewDidLoad>viewWillAppear
* Resize the constants
* import image assets and set image to a button
* UIButton.isEnable

* add view Controller
* navigation Controller
* Segue (control drag click on "show")


## Lesson 4

#### Change class name  
* three steps
1. change the class file name 
2. change the class name inside the file and comment
3. change the view controller name in main.storyboard -> Identity inspector -> custom class -> class

#### AVFoundtion

    import AVFoundation

    class ViewController: UIViewController {

        // MARK: Properties

        var audioRecorder: AVAudioRecorder!

        @IBAction func recordAudio(_ sender: AnyObject) {
            recordingLabel.text = "Recording in progress"
            stopRecordingButton.isEnabled = true
            recordButton.isEnabled = false

            let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
            let recordingName = "recordedVoice.wav"
            let pathArray = [dirPath, recordingName]
            let filePath = URL(string: pathArray.joined(separator: "/"))

            let session = AVAudioSession.sharedInstance()
            try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)

            try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])        
            audioRecorder.isMeteringEnabled = true
            audioRecorder.prepareToRecord()
            audioRecorder.record()
        }
    }




#### Create new view controller class
1. create file Cocoa touch class -> subclass of UIViewController
2. click on the controller in the main.storyboard -> Identity inspector -> custom class -> class -> change to new controller


#### Delegate

