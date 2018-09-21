//
//  ToevoegenViewController.swift
//  Friends
//
//  Created by test on 21/09/2018.
//  Copyright © 2018 com.bdh.staticlib. All rights reserved.
//

import UIKit

class ToevoegenViewController: UIViewController {

    var masterViewController: MasterTableViewController?
    
    @IBOutlet weak var naamField: UITextField!
    @IBOutlet weak var acherNaamField: UITextField!
    @IBOutlet weak var leeftijdField: UITextField!
    @IBOutlet weak var woonplaatsField: UITextField!
    @IBOutlet weak var opleidingsField: UITextField!
    @IBOutlet weak var hobbysField: UITextField!
    
//    @IBOutlet weak var haarKleurZwartButton: UIButton!
//    @IBOutlet weak var haarKleurBruinButton: UIButton!
//    @IBOutlet weak var haarKleurBlondButton: UIButton!
//    @IBOutlet weak var geslachtVrouwButton: UIButton!
//    @IBOutlet weak var geslachtManButton: UIButton!
    var lievelingsKleur: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func voegtoeKnop(_ sender: Any) {
        let friend = Friend(
            voornaam: naamField.text ?? "",
            achternaam:acherNaamField.text ?? "",
            woonplaats: woonplaatsField.text ?? "",
            leeftijd: Int(leeftijdField.text!) ?? 11,
            geslacht: .man,
            lievelingskleur: self.lievelingsKleur ?? #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),
            hobbys: hobbysField.text ?? "",
            opleiding: opleidingsField.text ?? "",
            haarkleur: haarkleur.blond)
        
    masterViewController!.addFriend(friend)
    navigationController?.popViewController(animated: true)
    }


    @IBAction func rozeKnopjes(_ sender: UIButton) {
        lievelingsKleur = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    @IBAction func blauwKnopje(_ sender: UIButton) {
        lievelingsKleur = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    @IBAction func geelKnopje(_ sender: UIButton) {
        lievelingsKleur = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    }
}
