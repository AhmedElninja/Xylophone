//
//  ViewController.swift
//  Xylophone
//
//  Created by Ahmed Alaa on 02/07/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Mark: - Properties.
    var player: AVAudioPlayer!
    
    //Mark: - LifeCycle Methods.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Mark: - Actions.
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        btnPressed(button: sender)
    }
}

//Mark: - ViewController Private Methods Extension.
extension ViewController{
    private func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    private func btnPressed(button: UIButton) {
        button.alpha = 0.5
        print("start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1
            print("End")
        }
    }
}

