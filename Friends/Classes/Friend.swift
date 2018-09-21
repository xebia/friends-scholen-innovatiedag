import Foundation
import UIKit

enum Geslacht {
    case man
    case vrouw
}

enum haarkleur {
    case bruin
    case zwart
    case blond
    case hoofddoek
}

struct Friend {
    let voornaam: String
    let achternaam: String
    var naam : String {
        return "\(voornaam) \(achternaam)"
    }
    let woonplaats: String
    let leeftijd: Int
    let geslacht: Geslacht
    let lievelingskleur: UIColor
    let hobbys: String
    let opleiding: String
    let haarkleur: haarkleur
    var emoji: String {
        return emoji(self)
    }
    
    private func emoji(_ friend: Friend) -> String {
        if friend.geslacht == .man {
            if friend.haarkleur == .bruin {
                return "👦🏽"
            }else if friend.haarkleur == .zwart {
                return "👦🏻"
            }
            return "👦🏼"
        } else {
            if friend.haarkleur == .bruin {
                return "👧🏽"
            }else if friend.haarkleur == .zwart {
                return "👧🏻"
            }else if friend.haarkleur == .hoofddoek{
                return "🧕🏼"
            }
            return "👧🏼"
        }
    }
}
