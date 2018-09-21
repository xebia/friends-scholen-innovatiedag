//
//  TableViewController.swift
//  Friends
//
//  Created by Bart den Hollander on 15/09/2018.
//  Copyright © 2018 com.bdh.staticlib. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    // Friends
    let frits = Friend(voornaam: "Piet",
                       achternaam: "Boymont",
                       woonplaats: "Groningen",
                       leeftijd: 17,
                       geslacht: .man,
                       lievelingskleur: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),
                       hobbys: "Roeien",
                       opleiding: "MAVO",
                       haarkleur: .bruin)
    let thirza = Friend(voornaam: "Thirza",
                        achternaam: "Tromp",
                        woonplaats: "Hilversum",
                        leeftijd: 17,
                        geslacht: .vrouw,
                        lievelingskleur: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),
                        hobbys: "Tekenen",
                        opleiding: "VWO",
                        haarkleur: .hoofddoek)
    let sjaak = Friend(voornaam: "Sjaak",
                       achternaam: "de Belg",
                       woonplaats: "Goes",
                       leeftijd: 18,
                       geslacht: .man,
                       lievelingskleur: .blue,
                       hobbys: "Roeien",
                       opleiding: "HAVO",
                       haarkleur: .blond)
    let isabelle = Friend(voornaam: "Isabelle",
                          achternaam: "Voshart",
                          woonplaats: "Loosdrecht",
                          leeftijd: 17,
                          geslacht: .vrouw,
                          lievelingskleur: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1),
                          hobbys: "Zweefvliegen",
                          opleiding: "VWO",
                          haarkleur: .bruin)
    let jan = Friend(voornaam: "Lia",
                     achternaam: "de Oud",
                     woonplaats: "Schiermonnikoog",
                     leeftijd: 14,
                     geslacht: .vrouw,
                     lievelingskleur: .blue,
                     hobbys: "Test",
                     opleiding: "HAVO",
                     haarkleur: .zwart)
    let piet = Friend(voornaam: "Piet",
                      achternaam: "Boymont",
                      woonplaats: "Groningen",
                      leeftijd: 18,
                      geslacht: .man,
                      lievelingskleur: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1),
                      hobbys: "Roeien",
                      opleiding: "HAVO",
                      haarkleur: .blond)
    let katinka = Friend(voornaam: "Katinka",
                         achternaam: "Westra Hoekzema",
                         woonplaats: "Hilversum",
                         leeftijd: 16,
                         geslacht: .vrouw,
                         lievelingskleur: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),
                         hobbys: "Roeien",
                         opleiding: "VWO",
                         haarkleur: .bruin)
    
    var friends: [Friend]!
    var selectedFriend: Friend?

    override func viewDidLoad() {
        self.friends = [frits, thirza, sjaak, isabelle, jan, piet, katinka]
        title = "Friend"
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        let friend = friends[indexPath.row]
        cell.textLabel?.text = friend.emoji + " " + friend.naam
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController,
            let selectedFriendToPresent = selectedFriend {
            detailViewController.friend = selectedFriendToPresent
        }
        if let toevoegenViewController = segue.destination as? ToevoegenViewController {
            toevoegenViewController.masterViewController = self
        }
    }

    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedFriend = friends[indexPath.row]
        return indexPath
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Adding Friends
    
    func addFriend(_ friend: Friend) {
        self.friends.append(friend)
        tableView.reloadData()
    }

}
