//
//  DetailViewController.swift
//  MyStory
//
//  Created by Raunaq Malhotra on 2/25/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var contextItem: ContextItem?
    
    @IBOutlet weak var titleOfPage: UINavigationItem!
    @IBOutlet weak var contextImage: UIImageView!
    @IBOutlet weak var contextDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let item = contextItem {
//            print(item.title)
//        }
        
        if let item = contextItem {
            titleOfPage.title = item.title
            contextImage.image = item.image
            contextDescription.text = item.description
            view.backgroundColor = item.backgroundColor
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
