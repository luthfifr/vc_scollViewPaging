//
//  ViewController.swift
//  viewController_scrollView_Paging
//
//  Created by Luthfi Fathur Rahman on 5/30/17.
//  Copyright © 2017 Luthfi Fathur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.scrollView.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        self.scrollView.isPagingEnabled = true
        let scrollViewHeight = self.scrollView.frame.size.width
        let scrollViewWidth = self.scrollView.frame.size.height
        
        let bg0 = UIImageView.init(frame: CGRect(x: 0, y:0, width: scrollViewHeight, height: scrollViewWidth))
        bg0.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        
        let bg1 = UIImageView.init(frame: CGRect(x: bg0.frame.size.width, y:0, width: scrollViewHeight, height: scrollViewWidth))
        bg1.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
      
        let bg2 = UIImageView.init(frame: CGRect(x: bg0.frame.size.width*2, y:0, width: scrollViewHeight, height: scrollViewWidth))
        bg2.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
      
        let bg3 = UIImageView.init(frame: CGRect(x: bg2.frame.size.width*3, y:0, width: scrollViewHeight, height: scrollViewWidth))
        bg3.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        
        bg0.image = UIImage(named: "gambar1_edit")
        bg0.contentMode = .scaleAspectFit
        bg1.image = UIImage(named: "gambar2_edit")
        bg1.contentMode = .scaleAspectFit
        bg2.image = UIImage(named: "gambar3_edit")
        bg2.contentMode = .scaleAspectFit
        bg3.image = UIImage(named: "gambar4_edit")
        bg3.contentMode = .scaleAspectFit
        
        self.scrollView.addSubview(bg0)
        self.scrollView.addSubview(bg1)
        self.scrollView.addSubview(bg2)
        self.scrollView.addSubview(bg3)
      
        self.scrollView.contentSize = CGSize(width: scrollViewHeight*4, height: scrollViewWidth)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

