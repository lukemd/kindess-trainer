//
//  ViewController.swift
//  KindessQuizApp
//
//  Created by Paul Maxeiner on 8/2/16.
//  Copyright © 2016 Paul Maxeiner. All rights reserved.
//

import UIKit

struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet weak var questionLabel: UILabel!
    
    var Questions = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

