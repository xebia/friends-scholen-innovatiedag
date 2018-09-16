//
//  DetailViewController.swift
//  Friends
//
//  Created by Bart den Hollander on 15/09/2018.
//  Copyright © 2018 com.bdh.staticlib. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var friend: Friend!

    @IBOutlet weak var geslachtLabel: UILabel!
    @IBOutlet weak var voornaamLabel: UILabel!
    @IBOutlet weak var leeftijdLabel: UILabel!
    @IBOutlet weak var woonplaatsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = friend.naam
        geslachtLabel.text = friend.geslacht == .man ? "👦" : "👧"
        voornaamLabel.text = friend.voornaam
        leeftijdLabel.text = "\(friend.leeftijd)"
        woonplaatsLabel.text = friend.woonplaats
    }
}
