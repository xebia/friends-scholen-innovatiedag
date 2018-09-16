import Foundation
import UIKit

enum Geslacht {
    case man
    case vrouw
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
}
