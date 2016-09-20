//
//  ViewController.swift
//  Scrollview
//
//  Created by Edrick Pascual on 9/19/16.
//  Copyright © 2016 Edge Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // Array of images that will show when user scrolls
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        // For loop for the images selected
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            // Create location for the images
            var newX: CGFloat =  0.0
            
            // Set location of where the each element will go
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            /* Set size content size as long as the content so it knows how far to scroll. */
            // Store Content size
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            // X: Is half the size of the width of the frame minus the half the width.
            // Y: Is half the size of the height of the frame minus the half the height.
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
            
        }
        // Set content size of the scrollview
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
    }
}

