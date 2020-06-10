//
//  ViewController.swift
//  slidingCardTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit
import CardSlider

struct Item: CardSliderItem{
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(Item(image: UIImage(named: "hinako")!,
                         rating: nil,
                         title: "BookMarks",
                         subtitle: "Get exceited about them",
                         description: "You can add the bookmarks now"))
        data.append(Item(image: UIImage(named: "kasumi")!,
        rating: nil,
        title: "BookMarks",
        subtitle: "Get exceited about them",
        description: "You can add the bookmarks now"))
        data.append(Item(image: UIImage(named: "mikako")!,
        rating: nil,
        title: "BookMarks",
        subtitle: "Get exceited about them",
        description: "You can add the bookmarks now"))
    }

    @IBAction func didTapButton(_ sender: Any) {
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        data[index]
    }
    
    func numberOfItems() -> Int {
        data.count
    }
    
}

