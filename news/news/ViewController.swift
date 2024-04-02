//
//  ViewController.swift
//  news
//
//  Created by Aitzhan Ramazan on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titlefield: UILabel!
    @IBOutlet weak var imagefield: UIImageView!
    
    @IBOutlet weak var descriptionfield: UILabel!
    
    var news = News()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titlefield.text = news.title
        imagefield.image = UIImage(named: news.image)
        descriptionfield.text = news.description
        
    }


}

