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

    let frits = Friend(voornaam: "Frits",
                       achternaam: "Boymont",
                       woonplaats: "Groningen",
                       leeftijd: 12,
                       geslacht: .man,
                       lievelingskleur: .blue)
    let vera = Friend(voornaam: "Vera",
                      achternaam: "van Wijnhaard",
                      woonplaats: "Utrecht",
                      leeftijd: 12,
                      geslacht: .vrouw,
                      lievelingskleur: .blue)
    let sjaak = Friend(voornaam: "Sjaak",
                       achternaam: "de Belg",
                       woonplaats: "Goes",
                       leeftijd: 12,
                       geslacht: .man,
                       lievelingskleur: .blue)
    let eva = Friend(voornaam: "Eva",
                     achternaam: "Kopbal",
                     woonplaats: "Texel",
                     leeftijd: 12,
                     geslacht: .vrouw,
                     lievelingskleur: .blue)
    let jan = Friend(voornaam: "Lia",
                     achternaam: "de Oud",
                     woonplaats: "Schiermonnikoog",
                     leeftijd: 12,
                     geslacht: .vrouw,
                     lievelingskleur: .blue)
    var friends: [Friend]!
    var selectedFriend: Friend?

    override func viewDidLoad() {
        self.friends = [frits, vera, sjaak, eva, jan]
        title = "Friend"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        let friend = friends[indexPath.row]
        cell.textLabel?.text = friend.naam
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController,
            let selectedFriendToPresent = selectedFriend {
            detailViewController.friend = selectedFriendToPresent
        }
    }

    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedFriend = friends[indexPath.row]
        return indexPath
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
