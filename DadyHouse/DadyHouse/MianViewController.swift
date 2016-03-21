//
//  MianViewController.swift
//  DadyHouse
//
//  Created by 江一帆 on 16/3/9.
//  Copyright © 2016年 newfriend. All rights reserved.
//

import UIKit

class MianViewController: UIViewController {

    var topView:UIView?
    var scrollView:UIScrollView?
    var pageControl:UIPageControl?
    let pages = 3
    let pagesW = 414
    let pagesH = 180
    var timer:NSTimer?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(0, -60), forBarMetrics: UIBarMetrics.Default);
        
        self.view.backgroundColor = UIColor.blueColor()
        topView = UIView(frame:CGRectMake(0,0,screenW,64))
        topView?.backgroundColor = UIColor.redColor()
        self.view .addSubview(topView!)
        initScroll()
    }

    func initScroll(){
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 64, width: pagesW , height: pagesH))
        print(screenW)
        scrollView?.contentSize = CGSize(width: pagesW * pages, height: pagesH)
        scrollView?.backgroundColor = UIColor.redColor()
        scrollView?.pagingEnabled = true
        scrollView?.showsHorizontalScrollIndicator = false
        scrollView?.showsVerticalScrollIndicator = false
        
        pageControl?.frame = CGRect(x: 414 - 130, y: 180 - 20, width: 130, height: 20)
//        pageControl!.currentPageIndicatorTintColor = UIColor.whiteColor()
//        pageControl!.pageIndicatorTintColor = UIColor.blackColor()
//        pageControl!.currentPage = 0
        
        
        for i in  0..<pages {
            let imageViews:UIImageView = UIImageView(frame: CGRect(x: i * pagesW, y: 0, width: pagesW, height: pagesH))
            imageViews.image = UIImage(named: "\(i+1)")
            self.scrollView?.addSubview(imageViews)
        }

        
    
        self.view.addSubview(scrollView!)
//        self.view.addSubview(pageControl!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    


}

