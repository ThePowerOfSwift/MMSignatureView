//
//  ViewController.swift
//  MMSignatureView
//
//  Created by mir-taqi on 03/21/2020.
//  Copyright (c) 2020 mir-taqi. All rights reserved.
//

import UIKit
import MMSignatureView

class ViewController: UIViewController {
     @IBOutlet weak var signatureView: MMSignatureView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signatureView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Function for clearing the content of signature view
      @IBAction func clearSignature(_ sender: UIButton) {
          
          self.signatureView.clear()
      }
      
      // Function for saving signature
      @IBAction func saveSignature(_ sender: UIButton) {
          // Getting the Signature Image from self.drawSignatureView using the method getSignature().
          if let signatureImage = self.signatureView.getSignature(scale: 10) {
              
              // Saving signatureImage from the line above to the Photo Roll.
              // The first time you do this, the app asks for access to your pictures.
              UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
              
              // Since the Signature is now saved to the Photo Roll, the View can be cleared anyway.
              self.signatureView.clear()
          }
      }

}
extension ViewController : MMSignatureViewDelegate{
    
    // MARK: - Delegate Methods
       
    
       // didStart() is called right after the first touch is registered in the view.
       // For example, this can be used if the view is embedded in a scroll view, temporary
       // stopping it from scrolling while signing.
       func didStart(_ view : MMSignatureView) {
           print("Started drawing")
       }
       
       // didFinish() is called rigth after the last touch of a gesture is registered in the view.
       // Can be used to enabe scrolling in a scroll view if it has previous been disabled.
       func didFinish(_ view : MMSignatureView) {
           print("Stopeed Drawing")
       }
}
