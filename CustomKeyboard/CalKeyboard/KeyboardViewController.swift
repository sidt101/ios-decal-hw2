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
    @IBOutlet var buttonSpacebar: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet weak var encodeValue: UITextField!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        debugPrint("hello");
        print("hello");
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
        if ((encodeValue?.text) != nil) {
            let encodeNumber = Int(encodeValue.text!);
            let s = sender.titleLabel!.text!.unicodeScalars;
            let constChar = Character(UnicodeScalar(Int(s[s.startIndex].value) + encodeNumber!));
            
            
            
        }
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        print("hello");
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
        buttonSpacebar.addTarget(self, action: "inputLetter:", forControlEvents: .TouchUpInside)

        
    }


}
