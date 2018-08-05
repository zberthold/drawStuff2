//
//  ViewController.swift
//  drawStuff2
//
//  Created by Zoe Berthold on 8/5/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var regularView: UIView!
    var location = CGPoint(x:0, y:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            for touch in touches{
                location = touch.location(in: regularView)
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
                label.center = location
                label.textAlignment = .center
                label.backgroundColor = .purple
                self.view.addSubview(label)
            }
        }

    
    


}

