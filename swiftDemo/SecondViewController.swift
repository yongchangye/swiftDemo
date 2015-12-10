//
//  SecondViewController.swift
//  swiftDemo
//
//  Created by 叶永长 on 12/10/15.
//  Copyright © 2015 YYC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var nameLabel:UILabel = UILabel()
    var desLabel:UILabel = UILabel()
    var imageHead:UIImageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
    }

    func sendValue(name:NSString)->Bool{
        let rect = CGRect(x: (UIScreen.mainScreen().bounds.width-100)/2, y: 100, width: 100, height: 20)
        nameLabel = UILabel(frame: rect)
        nameLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(nameLabel)
        let imageRect = CGRect(x: (UIScreen.mainScreen().bounds.width-100)/2, y: 200, width: 100, height: 100)
        imageHead = UIImageView(frame: imageRect)
        imageHead.image = UIImage(named: "abc")
        imageHead.layer.cornerRadius = imageHead.bounds.size.width/2
        imageHead.layer.masksToBounds = true
        self.view.addSubview(imageHead)
        nameLabel.text = name as String
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
