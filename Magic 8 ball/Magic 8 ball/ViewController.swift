//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by TestMac on 1/2/19.
//  Copyright © 2019 tagmegreen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let askMeImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"];
    let askMeIndex: Int = 0;
    
    @IBOutlet weak var askMeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askMePressed(_ sender: Any) {
        changeAskMeImage();
    }
    
    func changeAskMeImage() {
        let randomIndex = Int.random(in: 0 ... 4);
        askMeImageView.image = UIImage(named: askMeImageArray[randomIndex]);
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeAskMeImage();
    }
    
}

