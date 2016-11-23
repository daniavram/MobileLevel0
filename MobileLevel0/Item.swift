//
//  Item.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 20/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import Foundation
import UIKit

class Item {
    private var _title: String!
    private var _content: String!
    private var _image: UIImage?
    
    init(title: String, content: String) {
        self._title = title
        self._content = content
    }
    
    var title: String {
        get {
            return self._title
        }
    }
    
    var content: String {
        get {
            return self._content
        }
    }
    
    var image: UIImage? {
        get {
            return self._image
        }
        set {
            _image = newValue
        }
    }
}
