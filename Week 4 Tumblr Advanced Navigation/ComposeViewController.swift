//
//  ComposeViewController.swift
//  Week 4 Tumblr Advanced Navigation
//
//  Created by Prime, Heather(AWF) on 10/10/15.
//  Copyright © 2015 Prime, Heather. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    
    
    var textButtonOriginalCenter: CGPoint!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateInButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNevermindButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    func animateInButtons() {
        let buttons = [textButton, photoButton, quoteButton, linkButton, chatButton, videoButton]
        
        //LOOPZ
      for (index, button) in buttons.enumerate() {
           button.center = CGPointMake(40, 590)
        }
        
        UIView.animateWithDuration(5, animations: {
            
            for (index, button) in buttons.enumerate() {
                button.center = CGPoint(x: button.center.x, y: button.center.y - 500)
            }
            
        })
        
        //UIView.animateWithDuration(1.0, delay: 1.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: { () -> Void in
          //  self.photoButton.center = CGPoint(x: self.photoButton.center.x, y: self.photoButton.center.y - 500)
            //}, completion: nil)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
