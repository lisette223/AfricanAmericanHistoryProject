//
//  ViewController.swift
//  AfricanAmericanHistoryProject
//
//  Created by Lisette Antigua on 1/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nextButton: UIButton!
    @IBOutlet var imageView: UIImageView!
 
    @IBOutlet var headingApp: UILabel!
    
    @IBOutlet var captionLabel: UILabel!
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var position = 0
    @IBAction func viewMore(_ sender: UIButton) {
  
        let images:[UIImage] = [#imageLiteral(resourceName: "Martin_Luther_King,_Jr."), #imageLiteral(resourceName: "rosa-parks-9433715-1-402"), #imageLiteral(resourceName: "malcolm-x-9396195-1-402")]
        let captions: [String] = ["Martin Luther King Jr. (born Michael King Jr.; January 15, 1929 – April 4, 1968) was an American Baptist minister and activist who became the most visible spokesperson and leader in the Civil Rights Movement from 1955 until his assassination in 1968. King is best known for advancing civil rights through nonviolence and civil disobedience", "Rosa Louise McCauley Parks (February 4, 1913 – October 24, 2005) was an American activist in the civil rights movement best known for her pivotal role in the Montgomery bus boycott.", "Malcolm X (born Malcolm Little; May 19, 1925 – February 21, 1965) was an African American Muslim minister and human rights activist who was a popular figure during the civil rights movement. He is best known for his time spent as a vocal spokesman for the Nation of Islam."
            ]
        let headings: [String] = ["Martin Luther King", "Rosa Parks", "Malcolm X"]
        if(position < images.count){
            captionLabel.text = captions[position]
            headingApp.text = headings[position]
            imageView.image = images[position]
            position += 1
            nextButton.setTitle("Next", for: .normal)
        }

        else{
            position = 0
            headingApp.text = "African American History"
            imageView.image = #imageLiteral(resourceName: "black-history-month")
            captionLabel.text = ""
            nextButton.setTitle("Click to view more", for: .normal)
            
        }
        
        
        
    }
    
}

