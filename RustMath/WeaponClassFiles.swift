//
//  WeaponClassFiles.swift
//  RustMath2
//
//  Created by Tyler Brenner on 6/23/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import Foundation


//MARK: Big dick Super Classes
class Tools {
        let durability = 100.00

}

class Weapons {
    let durability = 100.00
}

class MeleeWeapons {
    let durability = 100.00
    
}
//End Big dick Super Classes





//MARK: Tool Subclasses
class Rock:MeleeWeapons {
    var itemImage = "Rock.png"
}

class Hammer:Tools {
    var itemImage = "Hammer.png"
  
}


class Torch:MeleeWeapons {
    var itemImage = "Torch.png"
}

class StonePickAxe:Tools {
    var itemImage = "Stone Pickaxe.png"
}

class StoneHatchet:Tools {

}

class PickAxe:Tools {
    
}

class Hatchet:Tools {
    
}

class SalvagedPickAxe:Tools {
    
}

class SalvagedAxe:Tools {
    
}

class SalvagedHammer:Tools {

}





