//
//  ViewController.swift
//  Presentation
//
//  Created by Philip on 15.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        starPresentation()
    }
    
    func starPresentation() {
        if let pageViewController = storyboard?.instantiateViewController(
            withIdentifier: "PageViewController") as? PageViewController{
            present(pageViewController, animated: true, completion: nil)
        }
    }

}

