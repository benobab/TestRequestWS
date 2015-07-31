//
//  ViewController.swift
//  TestRequestWS
//
//  Created by Benobab on 31/07/15.
//  Copyright © 2015 Benobab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.testCoWS()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testCoWS(){
        let url : String = "http://jsonplaceholder.typicode.com/posts/1"
        let request : NSMutableURLRequest = NSMutableURLRequest()
        request.URL = NSURL(string: url)
        request.HTTPMethod = "GET"
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{ (response:NSURLResponse?, data: NSData?, error: NSError?) -> Void in
            
            do{
                
                let jsonResult: NSDictionary! = try  NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers) as? NSDictionary
                if (jsonResult != nil) {
                    // process jsonResult
                    print(jsonResult)
                } else {
                    // couldn't load JSON, look at error
                }
            }catch{
            }
            
            
            
            
        })
    }



}

