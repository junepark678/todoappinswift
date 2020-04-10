//
//  ViewController.swift
//  todo app
//
//  Created by June P on 2020/04/08.
//  Copyright © 2020 June P. All rights reserved.
//

import UIKit
import SQLite

class ViewController: UIViewController {


    @IBOutlet weak var textfield: UITextField!
    @IBAction func add(_ sender: Any) {
    }
    let todos = Table("todo")
    let id = Expression<Int>("id")
    let text = Expression<String>("text")
    let complete = Expression<Bool>("complete")
    var database: Connection!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createTable()
        let fileurl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("todos.db")
        let database = try! Connection(fileurl.path)
        self.database = database
    }
    func createTable(){

        do {
            try self.database.run(self.todos.create { (table) in
                table.column(self.id, primaryKey: true)
                table.column(self.text)
                table.column(self.complete)
            })
            print("created table")
        }
        catch{
            print(error)
        }
    }



}

