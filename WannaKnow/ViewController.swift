//
//  ViewController.swift
//  WannaKnow
//
//  Created by Dasu on 2022/2/18.
//

import UIKit
import DropDown
import SnapKit

class ViewController: UIViewController {

    var wannaKnowView = WannaKnowView()
    
    override func loadView() {
        super.loadView()
        view = wannaKnowView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
}

