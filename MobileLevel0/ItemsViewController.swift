//
//  ItemsViewController.swift
//  MobileLevel0
//
//  Created by Daniel Avram on 20/11/2016.
//  Copyright © 2016 Daniel Avram. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ItemsCell"
private let sectionInsets = UIEdgeInsets(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0)

class ItemsViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getAndPopulate(vc: self);
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Instance.instance.itemsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemsCell
        
        if let img = Instance.instance.itemsArray[indexPath.row].image {
            cell.image.image = img
        }
        cell.image.clearsContextBeforeDrawing = true
        cell.image.autoresizesSubviews = true
        
        if (indexPath.row % 5 != 4) {
            cell.image.contentMode = .scaleAspectFill
        } else {
            cell.image.contentMode = .scaleAspectFit
        }
        
        return cell
    }
    
    func refreshView() {
        self.collectionView!.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemVCItemIndex = indexPath.row
    }

}

extension ItemsViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width = view.frame.width
        var height = width / 2
        if (indexPath.row % 5 != 4) {
            width = width / 2;
        }
        width = width - (sectionInsets.left + sectionInsets.right)
        height = height - (sectionInsets.top + sectionInsets.bottom)
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
