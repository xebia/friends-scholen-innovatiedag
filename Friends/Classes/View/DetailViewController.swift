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
    @IBOutlet weak var favorietenKnop: UIBarButtonItem!

    lazy var favorietenNietIngevuldPlaatje: UIImage = {
        guard let starImage = UIImage(named: "star") else { fatalError("star image could not be loaded") }
        return starImage
    }()

    lazy var favorietenIngevuldPlaatje: UIImage = {
        guard let filledStarImage = UIImage(named: "star-filled") else { fatalError("star-filled image could not be loaded") }
        return filledStarImage
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = friend.naam
        geslachtLabel.text = friend.geslacht == .man ? "👦" : "👧"
        voornaamLabel.text = friend.voornaam
        leeftijdLabel.text = "\(friend.leeftijd)"
        woonplaatsLabel.text = friend.woonplaats
    }

    @IBAction func favorietenKnopGedrukt(_ sender: UIBarButtonItem) {
        if favorietenKnop.image == favorietenNietIngevuldPlaatje {
            favorietenKnop.image = favorietenIngevuldPlaatje
        } else if favorietenKnop.image == favorietenIngevuldPlaatje {
            favorietenKnop.image = favorietenNietIngevuldPlaatje
        }
    }
}
