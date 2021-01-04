//
//  ViewController.swift
//  DownloadPDF
//
//  Created by Leu Xuan Hieu on 11/18/20.
//  Copyright © 2020 Leu Xuan Hieu. All rights reserved.
//

import UIKit
import Alamofire
import ProgressHUD
class ViewController: UIViewController {
    
    let url = "http://qeam.org/qeam/pdf/hackingwithswift.pdf"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    
    }
    override func viewDidAppear(_ animated: Bool) {
        AF.download(url).downloadProgress { (process) in print(process.fractionCompleted)}
    }
}

