//
//  ViewController.swift
//  TourMateBD
//
//  Created by Raihan on 4/29/17.
//  Copyright © 2017 Raihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var MenubarConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableviewOutlet: UITableView!
    
    var hide = true
    
    
    var AhsanManjil = TourModel(title: "Ahsan Manjil", description: "Ahsan Manzil (Bengali: আহসান মঞ্জিল, Ahsan Monjil) was the official residential palace and seat of the Nawab of Dhaka. The building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh. Construction was started in 1859 and was completed in 1872. It was constructed in the Indo-Saracenic Revival architecture. It has been designated as a national museum.", titleImage: #imageLiteral(resourceName: "AhsanManjil"))
    //Ahsa
    var BichanaKandi = TourModel(title: "Bichana Kandi", description: "Bisanakandi is situated at Bangladesh-India border in Sylhet. It is a landscape beauty among gardens and hills. Bichanakandi is a village situated in Rustompur Union under Guainghat Upazilla. This is where many layers of the Khasi mountain meet at a single point from both sides. Flowing from above is a high fall. Adding to its charm are dark clouds hugging the mountain in the rainy season. And flowing underneath towards Bholaganj is a branch of the Piyain. Along the stream flowing from high up in the mountain come huge boulders that are deposited and mined in Bisanakandi.", titleImage: #imageLiteral(resourceName: "bichnakandi.jpg"))
    var  InaniBeach = TourModel(title: "InanI Beach", description: "Inani Beach (also Enani Beach) is a sea beach in Ukhia Upazila of Cox’s Bazar District, about 18 kilometers long. It has a nice view and has lots of coral stones. These coral stones take on a green shade during the summer & in the rainy season.It is a very beautiful beach known for its rock and coral boulders. The Hills can be seen from one side and sea on the other which makes it really impressive. The view of sunrise and sunset of this beach are very memorable. The blue water and the lines of stones is the main source of attraction for the tourists. The clean blue & shark free water is ideal for bathing and swimming without any fear.The water stored in between stones contain small sea-fish, crabs, snail, and many more. These will keep you busy for all day long. Most tourists choose this place for its silent nature and eccentric environment. Inani beach is famous for its crystal clear water at the beach. Finally, don’t forget to enjoy the sunset at the beach. Try to stay until the sun goes down.", titleImage: #imageLiteral(resourceName: "InaniBeach.jpg"))
    var Jaflong = TourModel(title: "Jaflong", description: "Jaflong Sylhet (জাফলং সিলেট) is a very popular tourist spot for small hills and waterfalls in Bangladesh located in Gowainghat Upazila of Sylhet District.Jaflong is located on the border between Bangladesh and Indian Meghalaya state. It is on the bank of Mari river coming from the Himalayas. The tourist spot is filled with mountains and rainfalls. The hills of various sizes and waterfalls have made the place fascinating for the visitors. Jaflong is famous for stone collection. You will find a tribe living in Jaflong for thousands of years. The name of the tribe is called Khasi. Every year thousands of visitors from all over the world come here to visit the tourist spot, and they become fascinated by the extraordinary beauty of the site. Tamabil is 5 km from Jaflong. There is an immigration point for the Bangladeshi and Indian citizen. A valid visa is required for cross the border. Shillong is the capital of Meghalaya state in India.", titleImage: #imageLiteral(resourceName: "Jaflong.jpg"))
    var LaalBaghFort = TourModel(title: "Laalbagh Fort", description: "Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th century Mughal fort complex that stands proudly before the Buriganga River in the southwestern part of Dhaka, Bangladesh. The construction was started in 1678 AD by Mughal Subahdar Muhammad Azam Shah who was son of Emperor Aurangzeb and later emperor himself. His successor, Shaista Khan, did not continue the work, though he stayed in Dhaka up to 1688.Mughal prince Muhammad Azam, third son of Aurangzeb started the work of the fort in 1678 during his vice-royalty in Bengal. He stayed in Bengal for 15 months. The fort remained incomplete when he was called away by his father Aurangzeb.Shaista Khan was the new subahdar of Dhaka in that time, and he did not complete the fort. In 1684, the daughter of Shaista Khan named Iran Dukht Pari Bibi died there. After her death, he started to think the fort as unlucky, and left the structure incomplete", titleImage: #imageLiteral(resourceName: "LaalbaghFort.jpg"))
    var NilGiri = TourModel(title: "Nil Giri", description: "Nilgiri or Nil Giri is one of the tallest peaks and beautiful tourist spot in Bangladesh. It is about 3500 feet high and situated at Thanci Thana. It is about 46 km south of Bandarban on the Bandarban-Chimbuk-Thanchi road. Beside this spot you can see Mro villages. Their colorful culture and living style are surely an unexplored experience for the visitors. In rainy season here creates a spectacular scenery, the whole spot is covered with the blanket of clouds. You can enjoy a cloudy experience. Winter is waiting for you with it’s foggy gesture on the height. It is a nice place for campfire in that season. Most attractive time is the dawn. It is better if you chose to stay during 7-18 dates of a lunar month to enjoy the moonlit night. You can also enjoy the serpentine course of Sangu River. This is the most spectacular tourist spot in Bandarban and managed by Army brigade of Bandarban.", titleImage: #imageLiteral(resourceName: "Nilgiri.jpg"))
    var SaintMartin = TourModel(title: "Saint Martin", description: "St. Martin's Island (Bengali: সেন্ট মার্টিন্স দ্বীপ) is a small island (area only 8 km2) in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox's Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. There is a small adjoining island that is separated at high tide, called Chera Dwip. It is about 8 kilometres (5 miles) west of the northwest coast of Myanmar, at the mouth of the Naf River.The first settlement started 250 years ago by Arabian sailors who named the island 'Jazeera'. During British occupation the island was named St. Martin Island. During the First Anglo-Burmese War between the British and Burmese empires in 1824–1826, rival claims to the island were a major factor. The local names of the island are 'Narikel jinjira' which means 'Coconut Island' in Bengali, and 'Daruchini Dwip'. It is the only coral island in Bangladesh.", titleImage: #imageLiteral(resourceName: "SaintMartin.jpg"))
    var Sonargaon = TourModel(title: "সোনারগাঁও ", description: "মনোমুগ্ধকর বাংলার প্রাচীন রাজধানী গ্রাম বাংলার প্রাকৃতিক সৌন্দর্য বেষ্টিত সোনারগাঁও জাদুঘর। ঢাকার খুব কাছেই অবস্থিত এই আকর্ষণীয় পিকনিক স্পটটি । এখানকার লোক ও কারুশিল্প ফাউন্ডেশনের বিশাল চত্বরে রয়েছে বেশ কয়েকটি পিকনিক স্পট। এখানে বনভোজনের পাশাপাশি দেখে আসতে পারেন বাংলার ঐতিহাসিক নানান স্মৃতি। এখানকার লোক ও কারুশিল্প ফাউন্ডেশন যাদুঘর, ঐতিহাসিক পানাম নগর , গোয়ালদী মসজিদ, গিয়াস উদ্দিন আযম শাহের মাজার ছাড়াও আরো অনেক ঐতিহাসিক জায়গা দেখে আসতে পারেন। বাংলার প্রাচীন রাজধানী সোনার গায়ের ইতিহাস, ঐতিহ্য ও সাংস্কৃতি সম্পর্কে ধারনা নিতে পারবেন অল্প সময়ে। নদী-নালা, খাল-বিল পরিবেষ্টিত এবং অসংখ্য গাছপালা সবুজের সমারোহ আপনাকে সহজেই আকৃষ্ট করবে। আর এজন্য দূরের ভ্রমন পিপাসু মানুষ, স্কুল কলেজের ছাত্র-ছাত্রী এবং বিদেশী পর্যটকরা প্রতিনিয়ত আসছে। ঈশা খাঁর বাড়ীটি অসাধারন স্থাপত্যশীল আর মধ্যযুগে পানাম নগরী আপনাকে কিছু্‌ক্ষনের জন্য হলেও ভুলিয়ে দেবে ব্যস্ততা, দুঃখ, বেদনা। ", titleImage: #imageLiteral(resourceName: "sonargaon 2.jpg"))
    
    var PlaceArray = [TourModel]()
    

    
    var placeNamesArray = [String]()
    
    
    var placeobject : TourModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         tableviewOutlet.layer.opacity = 0.5
        //tableviewOutlet.layer.shadowOpacity = 1
        tableviewOutlet.layer.shadowRadius = 6
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tableview.dataSource = self
        tableview.delegate = self
        
        PlaceArray.append(Sonargaon)
        PlaceArray.append(SaintMartin)
        PlaceArray.append(NilGiri)
        PlaceArray.append(LaalBaghFort)
        PlaceArray.append(Jaflong)
        PlaceArray.append(InaniBeach)
        PlaceArray.append(BichanaKandi)
        PlaceArray.append(AhsanManjil)
        Sonargaon.imageSlide = [#imageLiteral(resourceName: "SonargaonSlide.jpg"),#imageLiteral(resourceName: "SonargaonSlide2.jpg"),#imageLiteral(resourceName: "SonargaonSlide3.jpg"),#imageLiteral(resourceName: "SonargaonSlide4.jpg"),#imageLiteral(resourceName: "SonargaonSlide5.JPG"),#imageLiteral(resourceName: "SonargaonSlide6.JPG"),#imageLiteral(resourceName: "SonargaonSlide7.jpg"),#imageLiteral(resourceName: "SonargaonSlide8.jpg"),#imageLiteral(resourceName: "SonargaonSlide9.jpg")]
      
        
        
      
        

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVcSegue"
        {
            let destinationVC = segue.destination as! ImageViewController

            
            destinationVC.getPlaceObjct = placeobject
            
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

        
        self.placeobject = PlaceArray[indexPath.row]
        
        performSegue(withIdentifier: "toImageVcSegue", sender: nil)
        
    }
    
    
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlaceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let placeIndex = PlaceArray[indexPath.row]
        
        
        cell.textLabel?.text = placeIndex.title
        //        cell.textLabel?.text = placeNamesArray[indexPath.row]
        cell.backgroundColor = UIColor.black
        cell.textLabel?.textColor = UIColor.white
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menubarAction(_ sender: Any) {
        if hide == true{
        MenubarConstraint.constant = 0
            hide = false
            UITableView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else
        {
            MenubarConstraint.constant = -190
            hide = true
            UITableView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
    }


}

