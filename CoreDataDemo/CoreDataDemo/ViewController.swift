//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Rishi Jha on 01/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        createEmployee()
        fetchEmployee()
    }
    
    func createEmployee(){
        let employee = Employee(context: PersisteStorage.Shared.context)
        employee.name = "Rishi"
        PersisteStorage.Shared.saveContext()
    }
    
    func fetchEmployee(){
        do {
           guard let result = PersisteStorage.Shared.context.fetch(Employee.fetchRequest()) as? [Employee] else return
               result.forEach({debugPrint($0.name)})
        }catch let eror{
            debugPrint(eror)
        }
       
    }
}

