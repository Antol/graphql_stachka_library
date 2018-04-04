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

    var watcher: GraphQLQueryWatcher<BookQuery>?
    var authorName: String?
    
    let apollo = ApolloClient(url: URL(string: "https://api.graph.cool/simple/v1/cjfl6xykr22kb016804p2xnpw")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apollo.cacheKeyForObject = { $0["id"] }
        
        //1
//        apollo.fetch(query: BookQuery(isbn: "1234")) { (result, error) in
//            guard let authorName = result?.data?.book?.authors?.first?.name else {
//                return
//            }
//            print(authorName)
//        }
        
        //2
        watcher = apollo.watch(query: BookQuery(isbn: "1234")) { (result, error) in
            guard let authorName = result?.data?.book?.authors?.first?.name else {
                return
            }
            print(Date())
            print(authorName)
            self.authorName = authorName
        }
        
        let deadlineTime = DispatchTime.now() + .seconds(5)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            let mutation = UpdateAuthorMutation(name: self.authorName! + ".jr")
            self.apollo.perform(mutation: mutation) { (result, error) in
                print(error as Any)
            }
        }
        
    }
}

