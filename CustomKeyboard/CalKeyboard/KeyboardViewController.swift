//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var buttonA: UIButton!
    @IBOutlet var buttonB: UIButton!
    @IBOutlet var buttonC: UIButton!
    @IBOutlet var buttonD: UIButton!
    @IBOutlet var buttonE: UIButton!
    @IBOutlet var buttonF: UIButton!
    @IBOutlet var buttonG: UIButton!
    @IBOutlet var buttonH: UIButton!
    @IBOutlet var buttonI: UIButton!
    @IBOutlet var buttonJ: UIButton!
    @IBOutlet var buttonK: UIButton!
    @IBOutlet var buttonL: UIButton!
    @IBOutlet var buttonM: UIButton!
    @IBOutlet var buttonN: UIButton!
    @IBOutlet var buttonO: UIButton!
    @IBOutlet var buttonP: UIButton!
    @IBOutlet var buttonQ: UIButton!
    @IBOutlet var buttonR: UIButton!
    @IBOutlet var buttonS: UIButton!
    @IBOutlet var buttonT: UIButton!
    @IBOutlet var buttonU: UIButton!
    @IBOutlet var buttonV: UIButton!
    @IBOutlet var buttonW: UIButton!
    @IBOutlet var buttonX: UIButton!
    @IBOutlet var buttonY: UIButton!
    @IBOutlet var buttonZ: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button0: UIButton!
    @IBOutlet var encodeButton: UIButton!
    @IBOutlet var decodeButton: UIButton!
    @IBOutlet var buttonSpacebar: UIButton!
    @IBOutlet var returnButton: UIButton!
    
    var encodeHighlighted:Bool = true
    var currentEncodeValue = 0;
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }
    
    override func viewWillAppear(animated: Bool) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func inputLetter(sender:UIButton!) {
        if (encodeHighlighted) {
            currentEncodeValue = abs(currentEncodeValue)
        } else {
            currentEncodeValue = -abs(currentEncodeValue)
        }
        
        if let text = sender.titleLabel!.text {
            let x = Int(text.unicodeScalars[text.unicodeScalars.startIndex].value) + currentEncodeValue
            (textDocumentProxy as UIKeyInput).insertText(String(UnicodeScalar(x)))
        }
    }
    
    func deleteBackward(sender:UIButton!) {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    
    func addANewLine(sender:UIButton!) {
        (textDocumentProxy as UIKeyInput).insertText("\r\n")
    }
    
    func addASpace(sender:UIButton!) {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    func chooseEncodeDecodeValue(sender:UIButton!) {
        if (Int(sender.titleLabel!.text!)! != currentEncodeValue) {
            button0.selected = false
            button1.selected = false
            button2.selected = false
            button3.selected = false
            button4.selected = false
            button5.selected = false
            button6.selected = false
            button7.selected = false
            button8.selected = false
            button9.selected = false

            switch sender.titleLabel!.text! {
                case "0":
                    button0.selected = true
                    currentEncodeValue = 0
                    break
                case "1":
                    button1.selected = true
                    currentEncodeValue = 1
                    break
                case "2":
                    button2.selected = true
                    currentEncodeValue = 2
                    break
                case "3":
                    button3.selected = true
                    currentEncodeValue = 3
                    break
                case "4":
                    button4.selected = true
                    currentEncodeValue = 4
                    break
                case "5":
                    button5.selected = true
                    currentEncodeValue = 5
                    break
                case "6":
                    button6.selected = true
                    currentEncodeValue = 6
                    break
                case "7":
                    button7.selected = true
                    currentEncodeValue = 7
                    break
                case "8":
                    button8.selected = true
                    currentEncodeValue = 8
                    break
                case "9":
                    button9.selected = true
                    currentEncodeValue = 9
                    break
                default:
                    print("It wont reach here")
            }
            
        }
        
    }
    
    func switchBetweenEncodeAndDecode(sender:UIButton!) {
        if sender.titleLabel!.text == "Encode" {
            encodeHighlighted = true;
            encodeButton.selected = true;
            decodeButton.selected = false;
    
        } else {
            encodeHighlighted = false;
            encodeButton.selected = false;
            decodeButton.selected = true;
        }
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        
        encodeButton.selected = true;
        button0.selected = true;
        
        deleteButton.addTarget(self, action: "deleteBackward:", forControlEvents: .TouchUpInside)
        buttonA.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonB.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonC.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonD.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonE.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonF.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonG.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonH.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonI.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonJ.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonK.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonL.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonM.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonN.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonO.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonP.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonQ.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonR.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonS.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonT.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonU.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonV.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonW.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonX.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonY.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonZ.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)
        buttonSpacebar.addTarget(self, action: "addASpace:", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "addANewLine:", forControlEvents: .TouchUpInside)
        encodeButton.addTarget(self, action: "switchBetweenEncodeAndDecode:", forControlEvents: .TouchUpInside)
        decodeButton.addTarget(self, action: "switchBetweenEncodeAndDecode:", forControlEvents: .TouchUpInside)
        button0.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button1.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button2.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button3.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button4.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button5.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button6.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button7.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button8.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        button9.addTarget(self, action: "chooseEncodeDecodeValue:", forControlEvents: .TouchUpInside)
        
        
    }


}
