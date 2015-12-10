//
//  ViewController.swift
//  swiftDemo
//
//  Created by 叶永长 on 12/10/15.
//  Copyright © 2015 YYC. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    var deCell:mainCell = mainCell()
    var dataArray:NSMutableArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        for i in 1...6{
            dataArray.addObject("name\(i) 号")
        }
        
        var rightButton:UIButton;
        let rect = CGRect(x: 0, y: 100, width: 30, height: 30)
        rightButton = UIButton(type: .InfoLight)
        rightButton.frame = rect
        rightButton.addTarget(self, action: "rightClick:", forControlEvents: UIControlEvents.TouchUpInside)
        let barItem = UIBarButtonItem()
        barItem.customView = rightButton
        self.navigationItem.rightBarButtonItem = barItem
        
        var mainTableView:UITableView
        let tableRect = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
        mainTableView = UITableView(frame: tableRect)
        mainTableView.delegate = self
        mainTableView.dataSource = self
        self.view.addSubview(mainTableView)
    }
    func rightClick(sender:UIButton){
        print("rightaction")
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //点击
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let second:SecondViewController = SecondViewController()
        var bo:Bool = second.sendValue(dataArray.objectAtIndex(indexPath.row) as! String)
        print(bo)
        self.navigationController?.pushViewController(second, animated: true)
        
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:mainCell = mainCell(style: UITableViewCellStyle.Default, reuseIdentifier: "mycell")
        
        cell.showData(dataArray.objectAtIndex(indexPath.row) as! NSString)
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

