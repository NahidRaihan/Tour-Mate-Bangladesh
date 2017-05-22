//
//  descriptionViewController.swift
//  TourMateBD
//
//  Created by Raihan on 5/6/17.
//  Copyright © 2017 Raihan. All rights reserved.
//

import UIKit

class descriptionViewController: UIViewController {

    @IBOutlet weak var descriptionTitleImage: UIImageView!
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var descriptionModel : TourModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionTitleImage.image = descriptionModel?.titleImage
        descriptionTitle.text = descriptionModel?.title
        descriptionTextView.text = descriptionModel?.description

        // Do any additional setup after loading the view.
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
