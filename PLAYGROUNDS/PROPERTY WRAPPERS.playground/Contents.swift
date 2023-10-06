//se utiliza en swiftUI

import UIKit

do {
    struct Agua {
        //    var ph: Double { // 0 - 14
        //        willSet {
        //            if newValue < 0 {
        //                ph = 0
        //            } else if newValue > 14 {
        //                ph = 14
        //            }
        //        }
        //    }
        
        //otra manera de hacer lo de arriba
        private(set) var ph: Double//no se puede setear el ph
        
        mutating func setPh(_ ph: Double) {
            if ph < 0 {
                self.ph = 0
            } else if ph > 14 {
                self.ph = 14
            } else {
                self.ph = ph
            }
        }
    }
    
    var agua = Agua(ph: 7)
    
    print(agua.ph)
//    agua.ph = 11 <- Deseable
    agua.setPh(12)
    print(agua.ph)
    agua.setPh(20)//esto seria 14
    print(agua.ph)
}

print("=============")

do {
    struct PH {
        private(set) var value: Double//no puede ser seteada
        
        mutating func setValue(_ value: Double) {
            if value < 0 {
                self.value = 0
            } else if value > 14 {
                self.value = 14
            } else {
                self.value = value
            }
        }
    }
    
    struct Agua {
        var ph: PH//variable ph de tipo PH
    }
    
    var agua = Agua(ph: PH(value: 6))//inicializamos agua dandole un valor a PH
    
    print(agua.ph.value)
    agua.ph = PH(value: 3)
    print(agua.ph.value)
    agua.ph.setValue(8)//tenemos que utilizar el setValue para poder acceder
    print(agua.ph.value)
    agua.ph.setValue(-10)
    print(agua.ph.value)
}

print("=============")
//aplicamos soluciones con property wrapper
//es una forma de hacer lo anterior accediendo a las variables de forma mas sencilla
do {
    @propertyWrapper
    struct PH {
        private var phValue: Double = 3
        
        init() { }
        
        init(_ phValue: Double) {
            self.phValue = phValue
        }
        
        var wrappedValue: Double {//nos pbliga a tener esta variable que recibe el tipo de dato que tiene en este caso el PH
            get {
                return phValue
            }
            set {
                if newValue < 0 {
                    phValue = 0
                } else if newValue > 14 {
                    phValue = 14
                } else {
                    phValue = newValue
                }
            }
        }
        
        var projectedValue: PH {
            return self
        }
    }
    
    struct Agua {
        @PH(7) var ph: Double
//        var ph: PH
    }
    var agua = Agua()
    print(agua.ph)
    agua.ph = 11
    print(agua.ph)
    agua.ph = 48
    print(agua.ph)
    print(agua.$ph.wrappedValue)
}
