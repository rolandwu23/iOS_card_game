//
//  ViewController.swift
//  WarApp
//
//  Created by Christopher Ching on 2017-09-26.
//  Copyright © 2017 Christopher Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    
    
    @IBOutlet weak var rightScore: UILabel!
    
    var left=0;
    var right=0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnTap(_ sender: Any) {
        let leftRand=arc4random_uniform(13)+2
        let rightRand=arc4random_uniform(13)+2
        
      leftImage.image=UIImage(named: "card\(leftRand)")
        rightImage.image=UIImage(named: "card\(rightRand)")
        
        if(leftRand>rightRand){
            left+=1
            leftScore.text=String(left)
        }
        else if(rightRand>leftRand){
            right+=1
            rightScore.text=String(right)
        }
        
    }
    
    
    
    
}

