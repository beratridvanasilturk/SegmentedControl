//
//  ViewController.swift
//  segmentControl
//
//  Created by Berat Rıdvan Asiltürk on 3.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    @IBOutlet var segmentOutlet: UISegmentedControl!
    @IBOutlet var viewOutlet: UIView!
    
    var viewColor = Array<UIColor>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColors()
    }
     
    func setColors() {
     
        viewColor.append(UIColor.red)
        viewColor.append(.green)
        
        viewOutlet.backgroundColor = viewColor[0]
        
    }


    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        print("selected segment: \(sender.selectedSegmentIndex)")
        
        viewOutlet.backgroundColor = viewColor[sender.selectedSegmentIndex]
        
    }
}

