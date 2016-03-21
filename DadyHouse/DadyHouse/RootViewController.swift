//
//  RootViewController.swift
//  DadyHouse
//
//  Created by 江一帆 on 16/3/9.
//  Copyright © 2016年 newfriend. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabbarView()
        self.view.backgroundColor = UIColor.redColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initTabbarView(){
        let MianVc:MianViewController = MianViewController()
        let Mianbarbtn:UITabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "house.png"), selectedImage: UIImage(named: "house.png"))
        MianVc.tabBarItem = Mianbarbtn
        
        let ShopVc:ShopViewController = ShopViewController()
        let Shopbarbtn:UITabBarItem = UITabBarItem(title: "购物", image: UIImage(named: "shopping"), selectedImage: UIImage(named: "shopping"))
        ShopVc.tabBarItem = Shopbarbtn
        
        let controllers = [MianVc,ShopVc]
        
        self.viewControllers = controllers
    }

}
