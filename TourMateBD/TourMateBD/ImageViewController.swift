//
//  ImageViewController.swift
//  TourMateBD
//
//  Created by Raihan on 4/29/17.
//  Copyright © 2017 Raihan. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

   
    
    var getPlaceObjct : TourModel?

    
    @IBOutlet weak var descriptionOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func DetailsActions(_ sender: Any) {
        
        
    }
    

   
    @IBOutlet var emojiView: [UIView]!{
        didSet{
            emojiView.forEach {
            $0.isHidden = false
            }
        }
    }
  
    
    @IBAction func descriptionPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "descriptionShow", sender: nil)
      
       
    }
    
    @IBAction func galleryPressed(_ sender: Any) {
        //hideMenuContent()
        performSegue(withIdentifier: "galleryShow", sender: nil)
        
    }
    
    
 
    
    @IBAction func transportPressed(_ sender: Any) {
       // hideMenuContent()
    }
    
    
    @IBAction func hotelPressed(_ sender: Any) {
        //hideMenuContent()
    }
    
    
    @IBAction func essentialPressed(_ sender: Any) {
        //hideMenuContent()
    }
    
    

    @IBAction func sharePressed(_ sender: Any) {
        //hideMenuContent()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "descriptionShow"
        {
            let destinationVC = segue.destination as! descriptionViewController
            destinationVC.descriptionModel = getPlaceObjct
            
        }
        
        else if segue.identifier == "galleryShow"
        {
            let destinationVC = segue.destination as! imageSlideViewController
            destinationVC.imageSlideobj = getPlaceObjct
            
        }
    }
    
    //
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "toImageVcSegue"
    //        {
    //            let destinationVC = segue.destination as! ImageViewController
    //
    //
    //            destinationVC.getPlaceObjct = placeobject
    //
    //        }
    //        
    //    }
    //
    
       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
