//
//  PageViewController.swift
//  Presentation
//
//  Created by Philip on 15.07.2021.
//

import UIKit

class PageViewController: UIPageViewController {

    let textContent = ["Как вылечить диарею у кроликов",
                       "Если у кролика диарея, немедленно обратитесь к ветеринару",
                       "Принесите с собой на прием свежие образцы твердого кала и цекотрофов",
                       "Давая кролику лекарственные препараты, придерживайтесь назначений ветеринара"
    ]
    let emojiContent = ["🤔", "🐇🧆💧", "🧆🚕", "💉"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let contentVC = showViewControllerAtIndex(0) {
            setViewControllers([contentVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentVC?{
        guard index >= 0 else { return nil }
        guard index < textContent.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "ContentVC") as? ContentVC else {return nil}
        
        contentVC.text = textContent[index]
        contentVC.emoji = emojiContent[index]
        contentVC.curentPage = index
        contentVC.numberOfPages = textContent.count
        
        return contentVC
    }
        
}


extension PageViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentVC).curentPage
        pageNumber -= 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentVC).curentPage
        pageNumber += 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
