//
//  MoviesViewController.swift
//  tvplayer
//
//  Created by Oliiver Yepez on 12/15/15.
//  Copyright © 2015 Oliver Yepez. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet var scrollView : UIScrollView!
    @IBOutlet var collectionViewOutlet : UICollectionView!
    let reuseIdentifier = "featuredCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewDidLayoutSubviews() {
        self.scrollView!.contentSize = CGSizeMake(1920, 2200)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 0.0, left: 50.0, bottom: 0.0, right: 50.0)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if (collectionView == self.collectionViewOutlet)
        {
            return 8
        }
        
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.collectionViewOutlet)
        {
            let cell : FeaturedCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(self.reuseIdentifier, forIndexPath: indexPath) as! FeaturedCollectionViewCell
            
            let  imageFilename = "featured-\(indexPath.row).jpg"
            cell.featuredImage.image = UIImage(named: imageFilename)
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let playerVC = PlayerViewController()
        playerVC.playVideo()
        [self.presentViewController(playerVC, animated: true, completion: nil)]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
