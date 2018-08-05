//
//  ViewController.swift
//  drawStuff2
//
//  Created by Zoe Berthold on 8/5/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var tealSquare: UILabel!
    let displaySize: CGRect = UIScreen.main.bounds
    var location = CGPoint(x:300, y:400)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tealSquare.center)
        
    }

    @IBAction func onTappedYellowSquare(_ sender: UITapGestureRecognizer) {
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            location = touch.location(in: yellowSquare)
            location.x += 37.5
            location.y += 183.5
            print(touch)
            print(location)
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches{
            location = touch.location(in: yellowSquare)
            location.x += 37.5
            location.y += 183.5
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            label.center = location
            label.textAlignment = .center
            label.backgroundColor = .purple
            self.view.addSubview(label)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

