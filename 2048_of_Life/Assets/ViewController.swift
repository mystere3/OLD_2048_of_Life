//
//  ViewController.swift
//  2048_of_Life
//
//  Created by Eric Lehmann on 3/5/18.
//  Copyright © 2018 MysterE3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func startGameButtonTapped(sender: UIButton) {
        let game = GameViewController(dimension: 8, threshold: 2048)
        self.presentViewController(game, animated: true, completion: nil)
    }

}

