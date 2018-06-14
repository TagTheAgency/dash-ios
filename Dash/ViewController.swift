//
//  ViewController.swift
//  Dash
//
//  Created by Colin on 5/06/18.
//  Copyright © 2018 Colin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgV: UIImageView!
    
    var currentIndex = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgV.image = randomDashImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    let dashImagesArray = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "11",
        "12",
        "13",
        "14",
        "15",
        "16",
        "17",
        "18",
        "19",
        "20",
        "21",
        "22",
        "23",
        "24",
        "25"
        ]
    
    func randomDashImage() -> UIImage {
        let unsignedArrayCount = UInt32(dashImagesArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        if (randomNumber == currentIndex) {
            return randomDashImage()
        }
        
        currentIndex = randomNumber
        
        return UIImage(named: dashImagesArray[randomNumber])!
    }
    
    @IBAction func showDashImage() {
        imgV.image = randomDashImage()
    }
}

