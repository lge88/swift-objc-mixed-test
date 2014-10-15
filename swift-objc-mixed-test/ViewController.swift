//
//  ViewController.swift
//  swift-objc-mixed-test
//
//  Created by Li Ge on 10/14/14.
//  Copyright (c) 2014 Li Ge. All rights reserved.
//

import UIKit

class MyDelegate: MyProtocol {
    func getMyName() -> String {
        return "Li"
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myDelegate = MyDelegate()
        let m = MyModule(delegate: myDelegate)
        m.sayHello()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

