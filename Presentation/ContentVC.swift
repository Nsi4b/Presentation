//
//  ContentVC.swift
//  Presentation
//
//  Created by Philip on 15.07.2021.
//

import UIKit

class ContentVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var text = ""
    var emoji = ""
    var curentPage = 0
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = text
        emojiLabel.text = emoji
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = curentPage
    }
    
}
