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
    @IBOutlet weak var kleurRozeButton: UIButton!
    @IBOutlet weak var kleurBlauwButton: UIButton!
    @IBOutlet weak var kleurGeelButton: UIButton!
    @IBOutlet weak var kleurGroenButton: UIButton!
    @IBOutlet weak var kleurRoodButton: UIButton!
    @IBOutlet weak var opleidingField: UITextField!
    @IBOutlet weak var hobbysField: UITextField!
    @IBOutlet weak var haarKleurZwartButton: UIButton!
    @IBOutlet weak var haarKleurBruinButton: UIButton!
    @IBOutlet weak var haarKleurBlondButton: UIButton!
    @IBOutlet weak var geslachtVrouwButton: UIButton!
    @IBOutlet weak var geslachtManButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func voegtoeKnop(_ sender: Any) {
        var friend = Friend(
            voornaam: naamField.text!,
            achternaam:acherNaamField.text!,
            woonplaats: woonplaatsField.text!,
            leeftijd: Int(leeftijdField.text!)!,
            geslacht: .man,
            lievelingskleur: .blue
        )
        navigationController?.popViewController(animated: true)
        
    masterViewController!.addFriend(friend)
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
