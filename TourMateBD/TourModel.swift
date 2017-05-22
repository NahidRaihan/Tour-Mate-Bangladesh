//
//  TourModel.swift
//  TourMateBD
//
//  Created by Raihan on 5/6/17.
//  Copyright © 2017 Raihan. All rights reserved.
//

import Foundation
import UIKit
class  TourModel{
    var title : String
    var description : String
    var imageSlide: [UIImage] = []
    
    var titleImage : UIImage? = nil
    init(title :String , description:String , titleImage : UIImage) {
        self.title = title
        self.description = description
        self.titleImage = titleImage
    }
    
    
}

