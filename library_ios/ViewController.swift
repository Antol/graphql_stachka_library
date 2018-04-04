//
//  ViewController.swift
//  library_ios
//
//  Created by Antol Peshkov on 05/04/2018.
//  Copyright © 2018 Mad Brains. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    let url = URL(string: "https://api.graph.cool/simple/v1/cjfl6xykr22kb016804p2xnpw")!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apollo = ApolloClient(url: url)
        
        apollo.watch(query: BookQuery(isbn: "1234")) { (result, error) in
            guard let authorName = result?.data?.book?.authors?.first?.name else {
                return
            }
            print(authorName)
        }
    }
}

