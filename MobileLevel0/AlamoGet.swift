//
//  AlamoGet.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 19/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import AlamofireImage

 
func getAndPopulate(vc: ItemsViewController) {
    Alamofire.request("https://raw.githubusercontent.com/marsicdev/fci-mobile/master/fci-mobile-challenge-api.json").responseJSON { response in
        
        if let resp = response.result.value {
            let dict = JSON(resp)
            for (_, json) in dict {
                let tempItem = Item(title: json["title"].stringValue, content: json["content"].stringValue)
                Instance.instance.itemsArray.append(tempItem)
                if (json["image"].stringValue.hasPrefix("https")) {
                    getImageAndStore(url: json["image"].stringValue, item: Instance.instance.itemsArray.last!, vc: vc)
                } else {
                    Instance.instance.itemsArray.last?.image = UIImage(named: "codebehind square")
                }
            }
        }
    }
}

func getImageAndStore(url: String, item: Item, vc: ItemsViewController) {
    Alamofire.request(url).responseImage { response in
        if let img = response.result.value {
            item.image = img
        }
        vc.refreshView()
    }
}
