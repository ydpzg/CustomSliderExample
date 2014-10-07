//
//  ViewController.swift
//  CustomSliderExample
//
//  Created by ydp on 14-10-7.
//  Copyright (c) 2014年 hgsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let rangeSlider = RangeSlider(frame: CGRectZero)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(rangeSlider)
        
        rangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        
        // 测试代码，一个时间片运行
        //let time = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC))
        //dispatch_after(time, dispatch_get_main_queue()) {
        //    self.rangeSlider.trackHighlightTintColor = UIColor.redColor()
        //    self.rangeSlider.curvaceousness = 0.0
        //}
    }
    
    func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        
        println("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        println("width:\(view.bounds.width),height:\(view.bounds.height)");
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length,
            width: width, height: 31.0)
        
    }

}

