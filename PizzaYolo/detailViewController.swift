//
//  detailViewController.swift
//  PizzaYolo
//
//  Created by Roman Leyrat on 19/03/2019.
//  Copyright © 2019 Roman Leyrat. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var pizzaImageView: UIImageView!
    
    var pizza: Pizza? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailAPizza = pizza {
            if let detailDescriptionLabel = detailDescriptionLabel, let pizzaImageView = pizzaImageView {
                detailDescriptionLabel.text = detailAPizza.name
                pizzaImageView.image = UIImage(named: detailAPizza.name)

            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
