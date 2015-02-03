//
//  ViewController.swift
//  Tab
//
//  Created by Edwin Vazquez on 2/1/15.
//  Copyright (c) 2015 com.aperfectempire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let text: String;
    
    init(title: String, unselected: String, selected: String?, badge: String?, text: String) {
        self.text = text;	//self.text is the property, text is the parameter
        super.init(nibName: nil, bundle: nil);
        self.title = title;
        tabBarItem.image = UIImage(named: unselected);
        if selected != nil {
            tabBarItem.selectedImage = UIImage(named: selected!);
        }
        if badge != nil {
            tabBarItem.badgeValue = badge!;
        }
    }
    
    //Not called
    required init(coder aDecoder: NSCoder) {
        text = "";
        super.init(coder: aDecoder);
    }
    
    override func loadView() {
        view = View(text: text);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

