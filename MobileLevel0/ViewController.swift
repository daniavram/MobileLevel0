//
//  ViewController.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 19/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import UIKit

var itemVCItemIndex: Int = -1

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: customLabel!
    @IBOutlet weak var bodyLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = Instance.instance.itemsArray[itemVCItemIndex].image
        titleLbl.text = Instance.instance.itemsArray[itemVCItemIndex].title
        bodyLbl.text = Instance.instance.itemsArray[itemVCItemIndex].content
        
    }
}

