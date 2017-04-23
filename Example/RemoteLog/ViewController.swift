//
//  ViewController.swift
//  RemoteLog
//
//  Created by willpowell8 on 04/16/2017.
//  Copyright (c) 2017 willpowell8. All rights reserved.
//

import UIKit
import RemoteLogLibrary

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLabel:UILabel!
    @IBOutlet weak var deviceLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(updateRemote(_:)), name: NSNotification.Name(rawValue:"REMOTE_UUID_UPDATE"), object:nil)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0,
            target: self,
            selector: #selector(tick),
            userInfo: nil,
            repeats: true)
        tick()
    }
    
    @objc public func updateRemote(_ notification:Notification){
        DispatchQueue.main.async {
            self.deviceLabel.text = RemoteLog.uuid
        }
    }
    
    var timer = Timer()
    
    
    func tick() {
        self.dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none,
                                                                        timeStyle: .medium)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testPrint(){
        let dateString = DateFormatter.localizedString(from: Date(), dateStyle: .none,
                                                       timeStyle: .medium)
        print("Print Test Message : \(dateString)")
    }
    
    @IBAction func testNetworkPrint(){
         let configuration = URLSessionConfiguration.default
         RemoteLog.network(session: configuration)
         let session = URLSession(configuration: configuration)
         
         guard let url = URL(string: "http://httpbin.org/headers") else {return}
         let request = NSMutableURLRequest(url: url)
         request.setValue(UUID().uuidString, forHTTPHeaderField: "UUID")
         request.setValue("\(Date().timeIntervalSinceNow)", forHTTPHeaderField: "date")
         request.httpMethod = "GET"
         let task = session.dataTask(with: request as URLRequest, completionHandler: { _, response, error in
            
         })
         task.resume()
    }

}

