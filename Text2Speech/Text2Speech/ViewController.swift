//
//  ViewController.swift
//  Text2Speech
//
//  Created by Likhit Garimella on 20/04/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!      //Textfield for input
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button(_ sender: Any)        //Button when pressed to generate output
    {
        print("Button Tapped")
        let text = TextField.text!      //Initialising null text
        speak(string: text)             //Defining a string
    }
    
    func speak(string: String){
        let utterance = AVSpeechUtterance(string: string)   //Predefined function
        utterance.rate = 0.555
        utterance.volume = 1000
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW") //Speech synthesis function and Language
        
        print(AVSpeechSynthesisVoice.speechVoices())    //Prints various languages available
        
        let synt = AVSpeechSynthesizer()
        synt.speak(utterance)           //Generated speech to speak     //Function calling
    }
    
}

