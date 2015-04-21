//
//  ViewController.swift
//  FlyDanaAir
//
//  Created by Ese Bobori on 19/03/2015.
//  Copyright (c) 2015 HappyFlames. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, NSURLConnectionDelegate {
    

//    
//    func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge) {
//        
//        
//        println("Webcontroller got auth challenge via nsurlconnection")
//        
//        if (challenge.previousFailureCount == 0)
//        {
//            var credential = NSURLCredential(forTrust: challenge.protectionSpace.serverTrust)
//        }
//        
//    }

    

    @IBOutlet weak var Webview: UIWebView!
    
    var URLPath = "http://www.fountedgets.com/danamobile"
    var URLPath2 = "https://secure.flydanaair.com/bookings/m/flight_selection.aspx"
    
    func loadAddressUrl(){
        let requestUrl = NSURL(string: URLPath)
        let    request = NSURLRequest( URL: requestUrl! )
     

    //Webview.delegate = self
    Webview.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        loadAddressUrl()

    }

    @IBAction func HomeButton(sender: UIBarButtonItem) {
        
        loadAddressUrl()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        println("web view just about to load");
        
        //var connection = NSURLConnection(request: request, delegate: self)!
        var connection2 = NSURLConnection(request: request, delegate: self, startImmediately: true)!
        connection2.start()
        return false
        
    }
    

    func connection(connection: NSURLConnection, willSendRequestForAuthenticationChallenge challenge: NSURLAuthenticationChallenge) {
        
        
        println("Webcontroller got auth challenge via nsurlconnection")
        
        if (challenge.previousFailureCount == 0)
        {
            var credential = NSURLCredential(forTrust: challenge.protectionSpace.serverTrust)
        }
        
    }
    
    
}



