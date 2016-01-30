//
//  ViewController.swift
//  Tapper
//
//  Created by Mike on 1/30/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables || Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLable: UILabel!
    
    
    
    @IBAction func onCoinTapped(sender:UIButton!) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            newGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender:UIButton!) {

        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapButton.hidden = false
            tapsLable.hidden = false
            
            updateTapsLabel()
            
        }
        
    }
    
    func updateTapsLabel() {
        tapsLable.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func newGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        tapButton.hidden = true
        tapsLable.hidden = true
    }

    
    
    
    
    
    
    
    
}

