//
//  ViewController.swift
//  enums
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // Without Type
    enum  college {
        case studentName
        case collegeName
        case id
    }
    
    // With type
    enum CollegeType: String{
        case studentName = "Afnan"
        case collegeName = "abc"
        case id = "12"
    }
    
    enum collegeFunc{
        case studentName
        case collegeName
        case id
        
        func description() -> String{
            switch  self {
                case .studentName:
                    return "Afnan"
                case .collegeName:
                    return "Abc"
                case .id:
                    return "13"
            }
        }
    }
    
    enum Gender {
        case male , female
    }
    
    // with arguments

    enum Student{
        case studentName(String)
        case marks(String,String,String)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let collFunDescription = collegeFunc.studentName.description()
        print(collFunDescription)
        withouttype()
        withtype()
        withfunArguments()
    }
    
    func withfunArguments(){
        let stuname  = Student.studentName("Ali")
        let stumarks = Student.marks("12", "13", "14")
        switch stuname {
        case .studentName(let strName):
            print("my name is \(strName)")
        case .marks(let m1, let m2, let m3):
            print("my marks are \(m1) \(m2) \(m3)")
        }
    }
    
    func withtype(){
        let collegeTypeDetail = CollegeType.collegeName
        print(collegeTypeDetail)
        let collegeTypeRaw = CollegeType.collegeName.rawValue
        print(collegeTypeRaw)
        let collHas = CollegeType.collegeName.hashValue
        print(collHas)
    }
    
    func withouttype(){
        let collegeDetail = college.collegeName
        print(collegeDetail)
        let nameHas = college.collegeName.hashValue
        print(nameHas)
        switch collegeDetail {
        case .collegeName:
            print("Abc")
        case .id:
            print("12")
        case .studentName:
            print("Afnan")
        
        }
    }


}

