//
//  imageSlideViewController.swift
//  TourMateBD
//
//  Created by Raihan on 5/6/17.
//  Copyright © 2017 Raihan. All rights reserved.
//

import UIKit

class imageSlideViewController: UIViewController {
    
    @IBOutlet weak var gallaryBackgroundImage: UIImageView!
    @IBOutlet weak var slideShowScrollView: UIScrollView!
    
    var imageSlideobj : TourModel?

    override func viewDidLoad() {
        
        super.viewDidLoad()

       var imageArray: [UIImage] = []
     imageArray = (imageSlideobj?.imageSlide)!
        // Do any additional setup after loading the view.
        
        for i in 0 ..< imageArray.count{
          
            let imageView = UIImageView()
            imageView.image  = imageArray[i]
            gallaryBackgroundImage.layer.opacity = 0.5
            gallaryBackgroundImage.image = imageSlideobj?.titleImage
            
            //
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.slideShowScrollView.frame.width, height: self.slideShowScrollView.frame.height)
        slideShowScrollView.contentSize.width = slideShowScrollView.frame.width * CGFloat(i+1)
            slideShowScrollView.addSubview(imageView)
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
