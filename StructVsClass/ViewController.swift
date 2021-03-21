//
//  ViewController.swift
//  StructVsClass
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    struct MyStruct {
        var name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    class MyClass {
        var name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    func forStruct (){
        let fName = MyStruct(name: "Afnan")
        var sName = fName
        sName.name = "Hassan"
        print(fName.name)
        print(sName.name)
    }

    func forClass() {
        let fName = MyClass(name: "IOS Swift")
        var sName  = fName
        sName.name = "Objective C"
        print(fName.name)
        print(sName.name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forStruct()
        forClass()
    }


}

