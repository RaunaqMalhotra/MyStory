//
//  InfoViewController.swift
//  MyStory
//
//  Created by Raunaq Malhotra on 2/24/23.
//

import UIKit

class InfoViewController: UIViewController {
    
    // Create information for each label
    let aboutMe = ContextItem(title: "About Me", image: UIImage(named: "contactMe")!, description: "Hi! I am Raunaq Malhotra - a sophomore at Drexel University majoring in Software Engineering. I'm a Software Engineer, Foodie, Swimmer, and Baker. I previously interned at Vivid Seats in Chicago as a full-stack developer. Apart from coding, exploring restaurants is one of my favorite things to do in the world and I never want to let go of that passion! Fun facts : I love to bake - something I've been doing since I was 8. I was also a professional swimmer for 5 years - from ages 13 to 18.", backgroundColor: UIColor(red: 255/255, green: 204/255, blue: 229/255, alpha: 1.0)) // pastel pink
    
    let hobby = ContextItem(title: "My Hobbies", image: UIImage(named: "hobbyPhoto")!, description: "One of my hobbies is to bake. I learned baking from my aunt - who's an excellent cook - and I've been love with it ever since. In High School, I even started a local online entrepreneurial venture - Carlo's Confections - named after my dog, Carlo. Customers would order homemade deserts using my website (carlosconfections.com) and I would hand-bake and deliver it to them. The picture that you see above are croissants that I made for a customer.", backgroundColor: UIColor(red: 179/255, green: 236/255, blue: 255/255, alpha: 1.0)) // pastel cyan
    
    let whyIOS = ContextItem(title: "Why I chose this class?", image: UIImage(named: "iOSPhoto")!, description: "Since high school, I've always been drawn towards app development because of its complex back-end but user friendly front-end. I even built a video game app wherein you had to solve a murder mystery based on musical c(l)ues. When I came across CodePath, I knew I wanted iOS-102 to be my first course since not only do I get to build a customised application, but also learn a new language in 10 weeks!! I look forward to learning so much in this course!", backgroundColor: UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha: 1.0)) // pastel green
    
    let contact = ContextItem(title: "Contact Me", image: UIImage(named: "cookiePhoto")!, description: "If you'd like to know more about me or just connect, please feel free to contact me via LinkedIn at https://www.linkedin.com/in/raunaq-malhotra-a9ab031b5/", backgroundColor: UIColor(red: 255/255, green: 248/255, blue: 196/255, alpha: 1.0)) // pastel yellow
    
    // Array for storing label information
    var contextItems: [ContextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contextItems = [aboutMe, hobby, whyIOS, contact]
    }
    
  
    @IBAction func didTapOnLabel(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedLabel = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
            
            if tappedLabel.tag == 0 {
                detailViewController.contextItem = contextItems[0]
            } else if tappedLabel.tag == 1 {
                detailViewController.contextItem = contextItems[1]
            } else if tappedLabel.tag == 2 {
                detailViewController.contextItem = contextItems[2]
            } else if tappedLabel.tag == 3 {
                detailViewController.contextItem = contextItems[3]
            } else {
                print("no Label was tapped, please check your selection.")
            }
        }
    }
}
