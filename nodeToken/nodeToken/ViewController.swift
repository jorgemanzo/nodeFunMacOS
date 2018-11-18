//
//  ViewController.swift
//  nodeToken
//
//  Created by Jorge on 11/17/18.
//  Copyright © 2018 Puffin. All rights reserved.
//

import Cocoa
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class nodeResp: Mappable {
    required init?(map: Map) {
        
    }
    
    var forId: Int?
    var message: String?
    
    func mapping(map: Map){
        forId <- map["forId"]
        message <- map["message"]
    }
}

class ViewController: NSViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBOutlet weak var forIdField: NSTextField!
    
    @IBOutlet weak var forIdResponseField: NSTextField!
    @IBOutlet weak var messageResponseField: NSTextField!
    
    
    
    @IBAction func getInfo(_ sender: Any) {
        let url = "http://YOUR_DROPLET_HERE/get/" + forIdField.stringValue
        Alamofire.request(url).responseObject {(response: DataResponse<nodeResp>) in
            let nodeResp = response.result.value
            let message = nodeResp?.message
            let forId = nodeResp?.forId
            self.forIdResponseField.integerValue = forId!
            self.messageResponseField.stringValue = message!
        }
    }
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

